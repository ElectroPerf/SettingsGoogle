.class Lcom/android/settingslib/qrcode/QrCodeScanModeController$1;
.super Ljava/lang/Object;
.source "QrCodeScanModeController.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


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

    .line 42
    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController$1;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController$1;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeController;

    invoke-static {p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->-$$Nest$fgetmErrorListener(Lcom/android/settingslib/qrcode/QrCodeScanModeController;)Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->setErrorListener(Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;)V

    return-void
.end method
