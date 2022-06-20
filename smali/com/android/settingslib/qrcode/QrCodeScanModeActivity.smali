.class public Lcom/android/settingslib/qrcode/QrCodeScanModeActivity;
.super Lcom/android/settingslib/qrcode/QrCodeScanModeBaseActivity;
.source "QrCodeScanModeActivity.java"


# instance fields
.field private mIsGroupOp:Z

.field private mSink:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleIntent(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIntent(), action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QrCodeScanModeActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v1, "android.settings.BLUETOOTH_LE_AUDIO_QR_CODE_SCANNER"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "Launch with an invalid action"

    .line 63
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settingslib/qrcode/QrCodeScanModeActivity;->showQrCodeScannerFragment(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settingslib/qrcode/QrCodeScanModeBaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected showQrCodeScannerFragment(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "QrCodeScanModeActivity"

    const-string/jumbo v1, "showQrCodeScannerFragment"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v1, "bluetooth_device_sink"

    .line 75
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeActivity;->mSink:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    const-string v2, "bluetooth_sink_is_group"

    .line 76
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeActivity;->mIsGroupOp:Z

    const-string p1, "get extra from intent"

    .line 78
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "intent is null, can not get bluetooth information from intent."

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "qr_code_scanner_fragment"

    .line 87
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    if-nez p1, :cond_1

    .line 91
    new-instance p1, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    iget-boolean v1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeActivity;->mIsGroupOp:Z

    iget-object v2, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeActivity;->mSink:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p1, v1, v2}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;-><init>(ZLandroid/bluetooth/BluetoothDevice;)V

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 104
    sget v1, Lcom/android/settingslib/R$id;->fragment_container:I

    invoke-virtual {p0, v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 99
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeBaseActivity;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method
