.class public abstract Lcom/android/settingslib/qrcode/QrCodeScanModeBaseActivity;
.super Lcom/android/settingslib/core/lifecycle/ObservableActivity;
.source "QrCodeScanModeBaseActivity.java"


# instance fields
.field protected mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract handleIntent(Landroid/content/Intent;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lcom/android/settingslib/R$style;->SudThemeGlifV3_DayNight:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 39
    sget v0, Lcom/android/settingslib/R$layout;->qrcode_scan_mode_activity:I

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/qrcode/QrCodeScanModeBaseActivity;->handleIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
