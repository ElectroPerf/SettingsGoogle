.class Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;
.super Landroid/os/Handler;
.source "QrCodeScanModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/16 v3, 0x20

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    invoke-static {p1}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->-$$Nest$fgetmController(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Lcom/android/settingslib/qrcode/QrCodeScanModeController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    invoke-static {v0}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->-$$Nest$fgetmSink(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    invoke-static {v1}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->-$$Nest$fgetmBroadcastMetadata(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    invoke-static {v2}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->-$$Nest$fgetmIsGroupOp(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settingslib/qrcode/QrCodeScanModeController;->addSource(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Z)V

    .line 211
    iget-object p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    invoke-static {p1}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->-$$Nest$mupdateSummary(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)V

    .line 212
    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    invoke-static {p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->-$$Nest$fgetmSummary(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    invoke-static {v0}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    invoke-static {v0}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p1, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    invoke-static {p1}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 204
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x2710

    .line 205
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 191
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment$2;->this$0:Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;

    invoke-static {p0}, Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;->-$$Nest$fgetmErrorMessage(Lcom/android/settingslib/qrcode/QrCodeScanModeFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
