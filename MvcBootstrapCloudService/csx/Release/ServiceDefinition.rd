<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="MvcBootstrapCloudService" generation="1" functional="0" release="0" Id="418ddcbc-a412-4118-84df-8eccd28d42da" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="MvcBootstrapCloudServiceGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="MvcBootstrap:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/LB:MvcBootstrap:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/LB:MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MapCertificate|MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="MvcBootstrap:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="MvcBootstrap:StorageConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MapMvcBootstrap:StorageConnectionString" />
          </maps>
        </aCS>
        <aCS name="MvcBootstrapInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MapMvcBootstrapInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:MvcBootstrap:Endpoint1">
          <toPorts>
            <inPortMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapMvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapMvcBootstrap:StorageConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/StorageConnectionString" />
          </setting>
        </map>
        <map name="MapMvcBootstrapInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrapInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="MvcBootstrap" generation="1" functional="0" release="0" software="D:\Usr\Gokul\Learning\MVC\MvcBootstrap\MvcBootstrapCloudService\csx\Release\roles\MvcBootstrap" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/SW:MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="StorageConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;MvcBootstrap&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;MvcBootstrap&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrapInstances" />
            <sCSPolicyUpdateDomainMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrapUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrapFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="MvcBootstrapUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="MvcBootstrapFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="MvcBootstrapInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="3af54520-a62e-4b1b-8c92-4e23e915bbf4" ref="Microsoft.RedDog.Contract\ServiceContract\MvcBootstrapCloudServiceContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="3ec4f1f2-f30e-404f-aad6-dff148ae65cc" ref="Microsoft.RedDog.Contract\Interface\MvcBootstrap:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="3b4d06e2-e4cf-4232-afa0-7d987a3d9b0a" ref="Microsoft.RedDog.Contract\Interface\MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/MvcBootstrapCloudService/MvcBootstrapCloudServiceGroup/MvcBootstrap:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>