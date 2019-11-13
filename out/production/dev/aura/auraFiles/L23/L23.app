<!--
 - Created by mparzych004 on 11.10.2019.
 -->

<aura:application description="L23">
    <lightning:button label="przycisk"/>c

    <ui:inputDate label=""/>

    <ui:menu>
        <ui:menuTriggerLink aura:id="trigger" label="Opportunity Status"/>
        <ui:menuList class="actionMenu" aura:id="actionMenu">
            <ui:actionMenuItem aura:id="item1" label="Any" click="{!c.updateTriggerLabel}"/>
            <ui:actionMenuItem aura:id="item2" label="Open" click="{!c.updateTriggerLabel}" disabled="true"/>
            <ui:actionMenuItem aura:id="item3" label="Closed" click="{!c.updateTriggerLabel}"/>
            <ui:actionMenuItem aura:id="item4" label="Closed Won" click="{!c.updateTriggerLabel}"/>
        </ui:menuList>
    </ui:menu>

    <ui:inputDate aura:id="dateField" label="Birthday" value="2014-01-30" displayDatePicker="true"/>

    <ui:inputSelect multiple="true">
        <ui:inputSelectOption text="All Primary" label="All Contacts" value="true"/>
        <ui:inputSelectOption text="All Primary" label="All Primary"/>
        <ui:inputSelectOption text="All Secondary" label="All Secondary"/>
    </ui:inputSelect>


<!--    <c:l33c></c:l33c>-->

    <c:l33c/>
    <!--    <c:ContactList></c:ContactList>-->
</aura:application>
