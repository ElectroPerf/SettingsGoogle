.class Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;
.super Landroid/content/BroadcastReceiver;
.source "EuiccOperationSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/EuiccOperationSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/EuiccOperationSidecar;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 64
    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->getReceiverAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-static {p1}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->-$$Nest$fgetmOpId(Lcom/android/settings/network/telephony/EuiccOperationSidecar;)I

    move-result p1

    const/4 v0, -0x1

    const-string v1, "op_id"

    .line 65
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->-$$Nest$fputmResultCode(Lcom/android/settings/network/telephony/EuiccOperationSidecar;I)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->-$$Nest$fputmDetailedCode(Lcom/android/settings/network/telephony/EuiccOperationSidecar;I)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-static {p1, p2}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->-$$Nest$fputmResultIntent(Lcom/android/settings/network/telephony/EuiccOperationSidecar;Landroid/content/Intent;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 74
    iget-object p2, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-static {p2}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->-$$Nest$fgetmResultCode(Lcom/android/settings/network/telephony/EuiccOperationSidecar;)I

    move-result p2

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->-$$Nest$fgetmDetailedCode(Lcom/android/settings/network/telephony/EuiccOperationSidecar;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "Result code : %d; detailed code : %d"

    .line 76
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EuiccOperationSidecar"

    .line 74
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;->this$0:Lcom/android/settings/network/telephony/EuiccOperationSidecar;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->onActionReceived()V

    :cond_0
    return-void
.end method
