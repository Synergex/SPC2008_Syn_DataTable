// Generated on 14-May-2008 3:17:20 by gencs v1.0.11.0
using System;
using System.Collections;
using System.Reflection;
#if POOLING
using System.EnterpriseServices;
#endif
using Synergex.xfnlnet;
namespace SynPSG.TableDemo
{
/// <summary>
/// Procedural Interface Class TableDemo
/// </summary>
#if POOLING
	[ObjectPooling()]
	public class SynPSG : ServicedComponent, ISynPSG
#else
	public class SynPSG : ISynPSG
#endif
	{
		/// <summary>
		/// constructor
		/// </summary>
		public SynPSG()
		{
			m_xfnet = new XFNet(this);
			m_xfnet.initialize();
		}
#if POOLING
		/// <summary>
		/// release method for pooling
		/// </summary>
		~SynPSG()
		{
			Dispose(false);
		}
		private new void Dispose(Boolean disposing)
		{
			m_xfnet.disconnect(disposing);
		}
#endif
		/// <summary>
		/// return the customer data table
		/// </summary>
		/// <returns></returns>
		[XFAttr(type=XFAttr.xftype.STRING,size=0)]
		public string CustomerTable ()
		{
			string ret=(string)m_xfnet.callUserMethod("CustomerTable");
			return ret;
		}
		/// <summary>
		/// exposed product table
		/// </summary>
		/// <returns></returns>
		[XFAttr(type=XFAttr.xftype.STRING,size=0)]
		public string ProductTable ()
		{
			string ret=(string)m_xfnet.callUserMethod("ProductTable");
			return ret;
		}
		/// <summary>
		/// Initialise the PSG demo server
		/// </summary>
		public void SynPSGInit ()
		{
			m_xfnet.callUserMethod("SynPSGInit");
		}
		#region xfnlnet support methods
		/// <summary>
		/// connect to xfServerPlus
		/// </summary>
		public void connect()
		{
			m_xfnet.connect();
		}
		/// <summary>
		/// xfServerPlus four parameter connect
		/// </summary>
		/// <param name="hostIP">IP address</param>
		/// <param name="hostPort">port number</param>
		/// <param name="minPort">minport number</param>
		/// <param name="maxPort">maxport number</param>
		public void connect(string hostIP, int hostPort, int minPort, int maxPort)
		{
			m_xfnet.connect(hostIP, hostPort, minPort, maxPort);
		}
		/// <summary>
		/// xfServerPlus host and port connect
		/// </summary>
		/// <param name="hostIP">IP address</param>
		/// <param name="hostPort">port number</param>
		public void connect(string hostIP, int hostPort)
		{
			m_xfnet.connect(hostIP, hostPort);
		}
		/// <summary>
		/// disconnect from xfServerPlus
		/// </summary>
		public void disconnect()
		{
			m_xfnet.disconnect();
		}
		/// <summary>
		/// initialize a debug session
		/// </summary>
		/// <param name="hexip">IP address</param>
		/// <param name="port">port number</param>
		public void debugInit(ref string hexip, ref int port)
		{
			m_xfnet.debugInit(ref hexip, ref port);
		}
		/// <summary>
		/// start a debug session of xfServerPlus
		/// </summary>
		public void debugStart()
		{
			m_xfnet.debugStart();
		}
#if !POOLING
		/// <summary>
		/// get the object's xfServerPlus connection
		/// </summary>
		/// <returns>xfServerPlus connection</returns>
		public object getConnect()
		{
			return m_xfnet.getConnect();
		}
		/// <summary>
		/// share the provided connection
		/// </summary>
		/// <param name="connect">connection to share</param>
		public void shareConnect(object connect)
		{
			m_xfnet.shareConnect(connect);
		}
#endif
		/// <summary>
		/// set the call timeout in seconds
		/// </summary>
		/// <param name="seconds">timeout in seconds</param>
		public void setCallTimeout(int seconds)
		{
			m_xfnet.setCallTimeout(seconds);
		}
		/// <summary>
		/// set the user string
		/// </summary>
		/// <param name="userString">The user string</param>
		public void setUserString(string userString)
		{
			m_xfnet.setUserString(userString);
		}
		/// <summary>
		/// get the user string 
		/// </summary>
		/// <returns>User String</returns>
		public string getUserString()
		{
			return m_xfnet.getUserString();
		}
		/// <summary>
		/// indicate if an object can be put back into the pool
		/// </summary>
		/// <returns>true if object can be returned to pool</returns>
		[XFAttr(type=XFAttr.xftype.INTEGER, size=1)]
#if POOLING
		protected override bool CanBePooled()
#else
		public bool CanBePooled()
#endif
		{
			bool ret = m_xfnet.CanBePooled();
			return ret;
		}
		#endregion
		private XFNet m_xfnet = null;
	}
}
