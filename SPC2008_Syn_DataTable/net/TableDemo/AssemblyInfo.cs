using System.Reflection;
using System.EnterpriseServices;
#if POOLING
[assembly: ApplicationName("TableDemo")]
[assembly: ApplicationActivation(ActivationOption.Server)]
[assembly: ApplicationAccessControl(false)]
#endif
[assembly: AssemblyTitle("SynPSGTableDemo")]
[assembly: AssemblyDescription("Demonstration of loading data using a data table")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany("Synergy")]
[assembly: AssemblyProduct("SynPSG")]
[assembly: AssemblyCopyright("Synergex")]
[assembly: AssemblyTrademark("Synergex")]
[assembly: AssemblyCulture("")]
[assembly: AssemblyVersion("1.0.0.1")]
