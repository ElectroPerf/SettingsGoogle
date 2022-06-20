.class public Lcom/android/settingslib/qrcode/QrCodeScanModeController;
.super Ljava/lang/Object;
.source "QrCodeScanModeController.java"


# instance fields
.field private mErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mLocalBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field private mLocalBroadcastMetadata:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;

.field private mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmErrorListener(Lcom/android/settingslib/qrcode/QrCodeScanModeController;)Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settingslib/qrcode/QrCodeScanModeController$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeController$1;-><init>(Lcom/android/settingslib/qrcode/QrCodeScanModeController;)V

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    .line 50
    new-instance v0, Lcom/android/settingslib/qrcode/QrCodeScanModeController$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeController$2;-><init>(Lcom/android/settingslib/qrcode/QrCodeScanModeController;)V

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

    const-string v0, "QrCodeScanModeController"

    const-string v1, "QrCodeScanModeController constructor."

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 65
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 66
    new-instance v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mLocalBroadcastMetadata:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;

    .line 67
    new-instance v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 69
    new-instance v1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v2, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mLocalBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    return-void
.end method

.method private convertToBroadcastMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mLocalBroadcastMetadata:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->convertToBroadcastMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addSource(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->mLocalBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 80
    invoke-direct {p0, p2}, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->convertToBroadcastMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p0

    .line 79
    invoke-virtual {v0, p1, p0, p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method
