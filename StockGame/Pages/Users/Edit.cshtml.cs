using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using StockGame.Data;
using StockGame.Models;
using StockGame.Models.ViewModels;

namespace StockGame.Pages.Users
{
    [Authorize(Roles = "Admin")]
    public class EditModel : StockPageModel
    {
        private readonly SignInManager<ApplicationUser> _signInManager;

        public EditModel(SignInManager<ApplicationUser> signInManager, UserManager<ApplicationUser> userManager, StockGameContext context) : base(userManager, context)
        {
            _signInManager = signInManager;
        }

        [BindProperty]
        public ApplicationUser ApplicationUser { get; set; }

        [BindProperty]
        public bool IsStudent { get; set; }

        [BindProperty]
        public bool IsTeacher { get; set; }

        [BindProperty]
        public bool IsAdmin { get; set; }

        [BindProperty]
        public OverridePassword OverridePassword { get; set; }

        public async Task<IActionResult> OnGetAsync(string id)
        {
            await FindActiveGameAndTeam();

            if (id == null)
                return NotFound();

            ApplicationUser = await Context.ApplicationUsers.SingleOrDefaultAsync(m => m.Id == id);

            if (ApplicationUser == null)
                return NotFound();

            OverridePassword = new OverridePassword();
            IsStudent = await UserManager.IsInRoleAsync(ApplicationUser, "Student");
            IsTeacher = await UserManager.IsInRoleAsync(ApplicationUser, "Teacher");
            IsAdmin = await UserManager.IsInRoleAsync(ApplicationUser, "Admin");

            return Page();
        }

        public async Task<IActionResult> OnGetLoginAs(string id)
        {
            var impersonatedUser = await Context.ApplicationUsers.SingleOrDefaultAsync(m => m.Id == id);

            if(impersonatedUser != null)
            {
                await _signInManager.SignOutAsync(); //signout admin
                await _signInManager.SignInAsync(impersonatedUser, false); //Impersonate User
            }

            return RedirectToPage("../Index");
        }

        internal async Task UpdateRole(bool addRole, string roleName)
        {
            if (addRole != await UserManager.IsInRoleAsync(ApplicationUser, roleName))
            {
                if (addRole)
                    await UserManager.AddToRoleAsync(ApplicationUser, roleName);
                else
                    await UserManager.RemoveFromRoleAsync(ApplicationUser, roleName);
            }
        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
                return Page();

            Context.Attach(ApplicationUser).State = EntityState.Modified;

            await UpdateRole(IsStudent, "Student");
            await UpdateRole(IsTeacher, "Teacher");
            await UpdateRole(IsAdmin, "Admin");
            if (OverridePassword.Password != null)
            {
                //TODO generate code in OnGet
                var code = await UserManager.GeneratePasswordResetTokenAsync(ApplicationUser);
                var result = await UserManager.ResetPasswordAsync(ApplicationUser, code, OverridePassword.Password);
            }

            try
            {
                await Context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ApplicationUserExists(ApplicationUser.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }

        private bool ApplicationUserExists(string id)
        {
            return Context.ApplicationUsers.Any(e => e.Id == id);
        }
    }
}
