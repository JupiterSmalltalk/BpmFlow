invalid processes
xpdlDefinition_invalid_process_01

	^'<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" Id="51bcdb00-5a6e-4e44-902d-fbe8cc4a4aa7" Name="Diagram 1" xmlns="http://www.wfmc.org/2009/XPDL2.2">
  <PackageHeader>
    <XPDLVersion>2.2</XPDLVersion>
    <Vendor>Bizagi Process Modeler.</Vendor>
    <Created>2019-12-13T17:40:40.4947348-03:00</Created>
    <ModificationDate>2019-12-13T17:44:59.0917388-03:00</ModificationDate>
    <Description>Diagram 1</Description>
    <Documentation />
  </PackageHeader>
  <RedefinableHeader>
    <Author>Usuario</Author>
    <Version>1.0</Version>
    <Countrykey>CO</Countrykey>
  </RedefinableHeader>
  <ExternalPackages />
  <Pools>
    <Pool Id="5db2a399-1357-4403-a20a-29d1b88b058b" Name="Main Process" Process="bc4dc20a-a746-4420-a06a-4eaad4486992" BoundaryVisible="false">
      <Lanes />
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="0" Width="0" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
    <Pool Id="4929416c-2eb1-4d90-8c9a-f421efa2b8e2" Name="Process 1" Process="ff88bd07-165a-454e-b5e6-e5970c26be9c" BoundaryVisible="true">
      <Lanes>
        <Lane Id="4be22d10-be59-44ac-b251-7b01436eb85b" Name="Lane 1" ParentPool="4929416c-2eb1-4d90-8c9a-f421efa2b8e2">
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="650" BorderColor="-11513776" FillColor="-1">
              <Coordinates XCoordinate="50" YCoordinate="0" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Lane>
      </Lanes>
      <NodeGraphicsInfos>
        <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="350" Width="700" BorderColor="-16777216" FillColor="-1">
          <Coordinates XCoordinate="30" YCoordinate="30" />
          <TextDirection xsi:nil="true" />
        </NodeGraphicsInfo>
      </NodeGraphicsInfos>
    </Pool>
  </Pools>
  <WorkflowProcesses>
    <WorkflowProcess Id="bc4dc20a-a746-4420-a06a-4eaad4486992" Name="Main Process">
      <ProcessHeader>
        <Created>2019-12-13T17:45:28.9357338-03:00</Created>
        <Description />
      </ProcessHeader>
      <RedefinableHeader>
        <Author />
        <Version />
        <Countrykey>CO</Countrykey>
      </RedefinableHeader>
      <ActivitySets />
      <DataInputOutputs />
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Main Process&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-12-13T17:40:40.4947348-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-12-13T17:40:40.4947348-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
    <WorkflowProcess Id="ff88bd07-165a-454e-b5e6-e5970c26be9c" Name="Process 1">
      <ProcessHeader>
        <Created>2019-12-13T17:45:28.9357338-03:00</Created>
        <Description />
      </ProcessHeader>
      <RedefinableHeader>
        <Author />
        <Version />
        <Countrykey>CO</Countrykey>
      </RedefinableHeader>
      <ActivitySets>
        <ActivitySet Id="d3f9d083-1675-4465-a09c-d14669a592e4" Name="Task 1">
          <Associations />
          <Artifacts />
          <Activities>
            <Activity Id="bf52da6b-fa9d-45d5-b121-72e8150b2cde" Name="s">
              <Description />
              <Event>
                <StartEvent Trigger="None" />
              </Event>
              <Documentation />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
                  <Coordinates XCoordinate="105" YCoordinate="56" />
                  <TextDirection xsi:nil="true" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes>
                <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
              </ExtendedAttributes>
            </Activity>
            <Activity Id="d2cc5d28-f37d-4fb8-b3e3-fe57aea7df18" Name="form-bad">
              <Description />
              <Implementation>
                <Task />
              </Implementation>
              <Performers />
              <Documentation />
              <Loop LoopType="None" />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
                  <Coordinates XCoordinate="227" YCoordinate="41" />
                  <TextDirection xsi:nil="true" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes />
            </Activity>
            <Activity Id="2cdfdf09-9ba7-49c7-ad42-66f1d836be9b" Name="">
              <Description />
              <Event>
                <EndEvent Result="None" />
              </Event>
              <Documentation />
              <NodeGraphicsInfos>
                <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
                  <Coordinates XCoordinate="422" YCoordinate="56" />
                  <TextDirection xsi:nil="true" />
                </NodeGraphicsInfo>
              </NodeGraphicsInfos>
              <ExtendedAttributes />
            </Activity>
          </Activities>
          <Transitions>
            <Transition Id="c3b1ea1d-00de-4f96-b921-fd64dc174af8" From="bf52da6b-fa9d-45d5-b121-72e8150b2cde" To="d2cc5d28-f37d-4fb8-b3e3-fe57aea7df18">
              <Condition />
              <Description />
              <ConnectorGraphicsInfos>
                <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
                  <TextDirection xsi:nil="true" />
                  <Coordinates XCoordinate="135" YCoordinate="71" />
                  <Coordinates XCoordinate="227" YCoordinate="71" />
                </ConnectorGraphicsInfo>
              </ConnectorGraphicsInfos>
              <ExtendedAttributes />
            </Transition>
            <Transition Id="a7170b8d-f5ef-4031-9c64-83c94c916a31" From="d2cc5d28-f37d-4fb8-b3e3-fe57aea7df18" To="2cdfdf09-9ba7-49c7-ad42-66f1d836be9b">
              <Condition />
              <Description />
              <ConnectorGraphicsInfos>
                <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
                  <TextDirection xsi:nil="true" />
                  <Coordinates XCoordinate="317" YCoordinate="71" />
                  <Coordinates XCoordinate="422" YCoordinate="71" />
                </ConnectorGraphicsInfo>
              </ConnectorGraphicsInfos>
              <ExtendedAttributes />
            </Transition>
          </Transitions>
        </ActivitySet>
      </ActivitySets>
      <DataInputOutputs />
      <Activities>
        <Activity Id="d9191435-db3c-428a-896a-2bf345c427ca" Name="start">
          <Description />
          <Event>
            <StartEvent Trigger="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-10311914" FillColor="-1638505">
              <Coordinates XCoordinate="195" YCoordinate="64" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="ebd7646e-574b-4226-900a-62f64b31fac2" Name="form-1">
          <Description />
          <Implementation>
            <Task />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="315" YCoordinate="49" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="5e593c4b-6d55-4b45-8a01-7e188aa403e6" Name="">
          <Description />
          <Event>
            <EndEvent Result="None" />
          </Event>
          <Documentation />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="30" Width="30" BorderColor="-6750208" FillColor="-1135958">
              <Coordinates XCoordinate="566" YCoordinate="260" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes />
        </Activity>
        <Activity Id="5984ce2b-8193-4b26-9ef9-e19fae350115" Name="Task 2">
          <Description />
          <Implementation>
            <SubFlow Id="eb3fee7b-1373-49ca-ad7e-d1f44210473d" />
          </Implementation>
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="536" YCoordinate="49" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;}" />
          </ExtendedAttributes>
        </Activity>
        <Activity Id="d3f9d083-1675-4465-a09c-d14669a592e4" Name="Task 1">
          <Description />
          <BlockActivity ActivitySetId="d3f9d083-1675-4465-a09c-d14669a592e4" />
          <Performers />
          <Documentation />
          <Loop LoopType="None" />
          <NodeGraphicsInfos>
            <NodeGraphicsInfo ToolId="BizAgi_Process_Modeler" Height="60" Width="90" BorderColor="-16553830" FillColor="-1249281">
              <Coordinates XCoordinate="315" YCoordinate="245" />
              <TextDirection xsi:nil="true" />
            </NodeGraphicsInfo>
          </NodeGraphicsInfos>
          <ExtendedAttributes>
            <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;priority&quot;:0,&quot;asynchronousBehavior&quot;:{},&quot;subProcessType&quot;:&quot;None&quot;,&quot;inputMappingType&quot;:&quot;None&quot;,&quot;outputMappingType&quot;:&quot;None&quot;,&quot;exitMode&quot;:&quot;AllTokens&quot;}" />
          </ExtendedAttributes>
        </Activity>
      </Activities>
      <Transitions>
        <Transition Id="e9857b6f-b44e-4317-a0f2-d23764362259" From="d9191435-db3c-428a-896a-2bf345c427ca" To="ebd7646e-574b-4226-900a-62f64b31fac2">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="225" YCoordinate="79" />
              <Coordinates XCoordinate="315" YCoordinate="79" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="f46f3c01-9abe-41e0-97fd-9762cd9003bc" From="ebd7646e-574b-4226-900a-62f64b31fac2" To="d3f9d083-1675-4465-a09c-d14669a592e4">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="360" YCoordinate="109" />
              <Coordinates XCoordinate="360" YCoordinate="245" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="3acfc7b5-7308-412a-bc8d-1f58ad07a9fe" From="ebd7646e-574b-4226-900a-62f64b31fac2" To="5984ce2b-8193-4b26-9ef9-e19fae350115">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="405" YCoordinate="79" />
              <Coordinates XCoordinate="536" YCoordinate="79" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="83e80d93-c185-4f66-8adc-41d3c13a3101" From="5984ce2b-8193-4b26-9ef9-e19fae350115" To="5e593c4b-6d55-4b45-8a01-7e188aa403e6">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="581" YCoordinate="109" />
              <Coordinates XCoordinate="581" YCoordinate="260" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
        <Transition Id="ecd6d39f-2ff4-4fed-b3e5-628b1d0a391c" From="d3f9d083-1675-4465-a09c-d14669a592e4" To="5e593c4b-6d55-4b45-8a01-7e188aa403e6">
          <Condition />
          <Description />
          <ConnectorGraphicsInfos>
            <ConnectorGraphicsInfo ToolId="BizAgi_Process_Modeler" BorderColor="-16777216">
              <TextDirection xsi:nil="true" />
              <Coordinates XCoordinate="405" YCoordinate="275" />
              <Coordinates XCoordinate="566" YCoordinate="275" />
            </ConnectorGraphicsInfo>
          </ConnectorGraphicsInfos>
          <ExtendedAttributes />
        </Transition>
      </Transitions>
      <ExtendedAttributes>
        <ExtendedAttribute Name="RuntimeProperties" Value="{&quot;processClassProperties&quot;:{&quot;displayName&quot;:&quot;Process 1&quot;,&quot;accessType&quot;:&quot;Process&quot;,&quot;order&quot;:1,&quot;useParentCaseNumber&quot;:true,&quot;enableAlarms&quot;:true,&quot;enableNotifications&quot;:true,&quot;creationDate&quot;:&quot;2019-12-13T17:40:40.4947348-03:00&quot;},&quot;processProperties&quot;:{&quot;version&quot;:{&quot;numberVersion&quot;:&quot;1.0&quot;,&quot;isActive&quot;:true},&quot;versionCreationDate&quot;:&quot;2019-12-13T17:40:40.4947348-03:00&quot;,&quot;supportsScopes&quot;:true,&quot;caseAccessType&quot;:&quot;Public&quot;,&quot;renderVersion&quot;:2,&quot;formsVersion&quot;:0}}" />
      </ExtendedAttributes>
    </WorkflowProcess>
  </WorkflowProcesses>
  <ExtendedAttributes />
</Package>'