.class Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;
.super Ljava/lang/Object;
.source "NetworkProviderSettings.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/NetworkProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEntryConnectCallback"
.end annotation


# instance fields
.field final mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field final mEditIfNoConfig:Z

.field final mFullScreenEdit:Z

.field final synthetic this$0:Lcom/android/settings/network/NetworkProviderSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
    .locals 0

    .line 1298
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1299
    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1300
    iput-boolean p3, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mEditIfNoConfig:Z

    .line 1301
    iput-boolean p4, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mFullScreenEdit:Z

    return-void
.end method


# virtual methods
.method public onConnectResult(I)V
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {v0}, Lcom/android/settings/network/NetworkProviderSettings;->access$100(Lcom/android/settings/network/NetworkProviderSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1311
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-static {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->-$$Nest$fputmClickedConnect(Lcom/android/settings/network/NetworkProviderSettings;Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    .line 1313
    iget-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mEditIfNoConfig:Z

    if-eqz p1, :cond_4

    .line 1315
    iget-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mFullScreenEdit:Z

    if-eqz p1, :cond_2

    .line 1316
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/NetworkProviderSettings;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_0

    .line 1318
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->mConnectWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p1, p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->-$$Nest$mshowDialog(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1322
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;->this$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f041768

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1323
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method
