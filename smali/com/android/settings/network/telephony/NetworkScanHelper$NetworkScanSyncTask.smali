.class final Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;
.super Ljava/lang/Object;
.source "NetworkScanHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/NetworkScanHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetworkScanSyncTask"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$9BjdylRQKmLvknGDvxT4iSvZUf4(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;->lambda$run$0(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/telephony/TelephonyManager;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 312
    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;->mCallback:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;
    .locals 0

    .line 322
    invoke-static {p0}, Lcom/android/settings/network/telephony/CellInfoUtil;->convertOperatorInfoToCellInfo(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAvailableNetworks()Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellNetworkScanResult;->getStatus()I

    move-result v1

    const-string v2, "NetworkScanHelper"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellNetworkScanResult;->getOperators()Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask$$ExternalSyntheticLambda0;-><init>()V

    .line 321
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 323
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync network scan completed, cellInfos = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->cellInfoListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;->mCallback:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    .line 329
    invoke-virtual {v0}, Lcom/android/internal/telephony/CellNetworkScanResult;->getStatus()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->-$$Nest$smconvertToScanErrorCode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 330
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;->mCallback:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 331
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sync network scan error, ex = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
