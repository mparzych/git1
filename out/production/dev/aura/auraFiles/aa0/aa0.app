

<aura:application description="aa0">

    <c:aa0c></c:aa0c>
    <aura:attribute name="num" type="integer" default="10"/>
    <ui:inputNumber label="Enter age" aura:id="num" value="{!v.num}"/>

    <aura:attribute type="Boolean" name="at2"/>
    <lightning:button name="button2" label="button2" onclick="{!c.act2}"/>

    <aura:if isTrue="true">

    </aura:if>

    <aura:if isTrue="true">

        <ui:button label="button1"/>
        <ui:button label="button1"/>
        <ui:button label="button1"/>
    </aura:if>



</aura:application>
