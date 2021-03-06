.class public Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "UnrestrictedPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field KEY_UNRESTRICTED_PREF:Ljava/lang/String;

.field mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "unrestricted_pref"

    .line 34
    iput-object v0, p0, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;->KEY_UNRESTRICTED_PREF:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;->KEY_UNRESTRICTED_PREF:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isValidPackageName()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UNRESTRICTED_PREF"

    if-nez v0, :cond_0

    const-string p0, "invalid package name, disable pref"

    .line 46
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 50
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 53
    iget-object v3, p0, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "is system or default app, unrestricted states only"

    .line 54
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    check-cast p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode()I

    move-result p0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_2

    const-string p0, "is unrestricted states"

    .line 58
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    check-cast p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 61
    :cond_2
    check-cast p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method
