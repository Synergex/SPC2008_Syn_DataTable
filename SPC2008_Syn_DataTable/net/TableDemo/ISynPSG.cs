// Generated on 14-May-2008 3:17:20 by gencs v1.0.11.0
using System;
using System.Collections;
using System.Reflection;
using Synergex.xfnlnet;
namespace SynPSG.TableDemo
{
/// <summary>
/// Interface TableDemo
/// </summary>
#if POOLING
	public interface ISynPSG : IDisposable
#else
	public interface ISynPSG
#endif
	{
		/// <summary>
		/// return the customer data table
		/// </summary>
		/// <returns></returns>
		string CustomerTable ();
		/// <summary>
		/// exposed product table
		/// </summary>
		/// <returns></returns>
		string ProductTable ();
		/// <summary>
		/// Initialise the PSG demo server
		/// </summary>
		void SynPSGInit ();
		#region xfnlnet support methods
		/// <summary>
		/// connect to xfServerPlus
		/// </summary>
		void connect();
		/// <summary>
		/// xfServerPlus four parameter connect
		/// </summary>
		/// <param name="hostIP">IP address</param>
		/// <param name="hostPort">port number</param>
		/// <param name="minPort">minport number</param>
		/// <param name="maxPort">maxport number</param>
		void connect(string hostIP, int hostPort, int minPort, int maxPort);
		/// <summary>
		/// xfServerPlus host and port connect
		/// </summary>
		/// <param name="hostIP">IP address</param>
		/// <param name="hostPort">port number</param>
		void connect(string hostIP, int hostPort);
		/// <summary>
		/// disconnect from xfServerPlus
		/// </summary>
		void disconnect();
		/// <summary>
		/// initialize a debug session
		/// </summary>
		/// <param name="hexip">IP address</param>
		/// <param name="port">port number</param>
		void debugInit(ref string hexip, ref int port);
		/// <summary>
		/// start a debug session of xfServerPlus
		/// </summary>
		void debugStart();
#if !POOLING
		/// <summary>
		/// get the object's xfServerPlus connection
		/// </summary>
		/// <returns>xfServerPlus connection</returns>
		object getConnect();
		/// <summary>
		/// share the provided connection
		/// </summary>
		/// <param name="connect">connection to share</param>
		void shareConnect(object connect);
#endif
		/// <summary>
		/// set the call timeout in seconds
		/// </summary>
		/// <param name="seconds">timeout in seconds</param>
		void setCallTimeout(int seconds);
		/// <summary>
		/// set the user string
		/// </summary>
		/// <param name="userString">The user string</param>
		void setUserString(string userString);
		/// <summary>
		/// get the user string 
		/// </summary>
		/// <returns>User String</returns>
		string getUserString();
		#endregion
	}
}
