.class public Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;
.super Ljava/lang/Object;
.source "WifiEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/WifiEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedInfo"
.end annotation


# instance fields
.field public dnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public frequencyMhz:I

.field public gateway:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public ipv6Addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public linkSpeedMbps:I

.field public networkCapabilities:Landroid/net/NetworkCapabilities;

.field public subnetMask:Ljava/lang/String;

.field public wifiStandard:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    const/4 v0, 0x0

    .line 468
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->wifiStandard:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;)V
    .locals 2

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    const/4 v0, 0x0

    .line 468
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->wifiStandard:I

    .line 481
    iget v0, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->frequencyMhz:I

    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->frequencyMhz:I

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    .line 483
    iget v0, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    .line 484
    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipAddress:Ljava/lang/String;

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    .line 486
    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->gateway:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->gateway:Ljava/lang/String;

    .line 487
    iget-object v0, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->subnetMask:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->subnetMask:Ljava/lang/String;

    .line 488
    iget v0, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->wifiStandard:I

    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->wifiStandard:I

    .line 489
    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method
