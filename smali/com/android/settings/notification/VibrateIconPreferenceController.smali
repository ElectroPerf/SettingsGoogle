.class public Lcom/android/settings/notification/VibrateIconPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "VibrateIconPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 6

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 34
    new-instance p1, Lcom/android/settings/notification/SettingPref;

    const/4 p2, 0x0

    new-array v5, p2, [I

    const/4 v1, 0x3

    const-string/jumbo v2, "vibrate_icon"

    const-string/jumbo v3, "status_bar_show_vibrate_icon"

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
