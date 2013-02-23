using System.Web;
using System.Web.Optimization;

namespace FullTilt
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                    "~/Scripts/modernizr.foundation.js"));

            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery.js"));

            bundles.Add(new ScriptBundle("~/bundles/raty").Include(
                "~/Scripts/raty/jquery.raty.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/foundationDebug").Include(
                "~/Scripts/jquery.foundation.*",
                "~/Scripts/jquery.placeholder.js",
                "~/Scripts/app.js"));

            bundles.Add(new ScriptBundle("~/bundles/foundation").Include(
                "~/Scripts/foundation.min.js",
                "~/Scripts/app.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.unobtrusive*",
                        "~/Scripts/jquery.validate*"));

            bundles.Add(new ScriptBundle("~/bundles/fancybox").Include(
                "~/Scripts/fancybox/jquery.fancybox.js",
                "~/Scripts/fancybox/jquery.fancybox.pack.js"));


            bundles.Add(new StyleBundle("~/Style/foundation").Include(
                "~/Stylesheets/foundation.min.css",
                "~/Stylesheets/app.css"));

            bundles.Add(new StyleBundle("~/Style/fancybox").Include(
               "~/Scripts/fancybox/jquery.fancybox.css"));
          
            BundleTable.EnableOptimizations = true;
        }
    }
}