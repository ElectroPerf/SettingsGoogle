.class public Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;
.super Lcom/android/settingslib/core/lifecycle/ObservableFragment;
.source "QrCodeScanModeFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;


# instance fields
.field private mBroadcastMetadata:Ljava/lang/String;

.field private mCamera:Lcom/android/settingslib/qrcode/QrCamera;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/settingslib/qrcode/QrCodeScanModeController;

.field private mCornerRadius:I

.field private mErrorMessage:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsGroupOp:Z

.field private mSink:Landroid/bluetooth/BluetoothDevice;

.field private mSummary:Landroid/widget/TextView;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBroadcastMetadata(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mBroadcastMetadata:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmController(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Lcom/android/settingslib/qrcode/QrCodeScanModeController;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mController:Lcom/android/settingslib/qrcode/QrCodeScanModeController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCornerRadius(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mCornerRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorMessage(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGroupOp(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mIsGroupOp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSink(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mSink:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummary(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSummary(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->updateSummary()V

    return-void
.end method

.method public constructor <init>(ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;-><init>()V

    .line 186
    new-instance v0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;-><init>(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)V

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    .line 74
    iput-boolean p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mIsGroupOp:Z

    .line 75
    iput-object p2, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mSink:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method private destroyCamera()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    :cond_0
    return-void
.end method

.method private handleBtLeAudioScanner()V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 228
    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/settingslib/qrcode/QrCamera;

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settingslib/qrcode/QrCamera;-><init>(Landroid/content/Context;Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;)V

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    .line 112
    invoke-virtual {v0, p1}, Lcom/android/settingslib/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method private showErrorMessage(I)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    .line 222
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    .line 221
    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateSummary()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mSummary:Landroid/widget/TextView;

    sget v1, Lcom/android/settingslib/R$string;->bt_le_audio_scan_qr_code_scanner:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getFramePosition(Landroid/util/Size;I)Landroid/graphics/Rect;
    .locals 1

    .line 164
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getViewSize()Landroid/util/Size;
    .locals 2

    .line 159
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public handleCameraFailure()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->destroyCamera()V

    return-void
.end method

.method public handleSuccessfulResult(Ljava/lang/String;)V
    .locals 2

    const-string v0, "QrCodeScanModeFragment"

    const-string v1, "handleSuccessfulResult(), get the qr code string."

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mBroadcastMetadata:Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->handleBtLeAudioScanner()V

    return-void
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "BT:"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 177
    :cond_0
    sget p1, Lcom/android/settingslib/R$string;->bt_le_audio_qr_code_is_not_valid_format:I

    invoke-direct {p0, p1}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->showErrorMessage(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/android/settingslib/qrcode/QrCodeScanModeController;

    invoke-direct {v0, p1}, Lcom/android/settingslib/qrcode/QrCodeScanModeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mController:Lcom/android/settingslib/qrcode/QrCodeScanModeController;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 88
    sget p0, Lcom/android/settingslib/R$layout;->qrcode_scanner_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->initCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->destroyCamera()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 94
    sget p2, Lcom/android/settingslib/R$id;->preview_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    .line 95
    iget-object p2, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settingslib/R$dimen;->qrcode_preview_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mCornerRadius:I

    .line 97
    iget-object p2, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 98
    iget-object p2, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    new-instance v0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$1;-><init>(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 104
    iget-object p2, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setClipToOutline(Z)V

    .line 105
    sget p2, Lcom/android/settingslib/R$id;->error_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
