.class Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AddDevicePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/AddDevicePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/AddDevicePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/AddDevicePreferenceController;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/AddDevicePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;->this$0:Lcom/android/settings/connecteddevice/AddDevicePreferenceController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/connecteddevice/AddDevicePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method