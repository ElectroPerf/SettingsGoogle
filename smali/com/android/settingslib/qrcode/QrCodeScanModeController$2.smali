.class Lcom/android/settingslib/qrcode/QrCodeScanModeController$2;
.super Ljava/lang/Object;
.source "QrCodeScanModeController.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/qrcode/QrCodeScanModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeController;


# direct methods
.method constructor <init>(Lcom/android/settingslib/qrcode/QrCodeScanModeController;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    const-string p0, "QrCodeScanModeController"

    const-string p1, "Get error when initializing BluetoothManager. "

    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
