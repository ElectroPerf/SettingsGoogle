.class public Lcom/android/settings/network/UiccSlotUtil;
.super Ljava/lang/Object;
.source "UiccSlotUtil.java"


# direct methods
.method public static synthetic $r8$lambda$-CBjQXYHLkEssIFVAclU1xYrkWc(IILandroid/telephony/UiccSlotMapping;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/network/UiccSlotUtil;->lambda$isTargetSlotActive$1(IILandroid/telephony/UiccSlotMapping;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NYClufbhBrLdRANm5a5IT2G4BGI(Ljava/util/Collection;Landroid/telephony/UiccSlotMapping;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/UiccSlotUtil;->lambda$getExcludedLogicalSlotIndex$2(Ljava/util/Collection;Landroid/telephony/UiccSlotMapping;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Wa_E0eqZSNjkUkrARC3CKEZW7Rs(Landroid/telephony/UiccSlotMapping;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/UiccSlotUtil;->lambda$getExcludedLogicalSlotIndex$3(Landroid/telephony/UiccSlotMapping;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gAjNGkZCGSGEvRfndpoeUE0kAl8(Lcom/google/common/collect/ImmutableList;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/UiccSlotUtil;->lambda$getEsimSlotId$0(Lcom/google/common/collect/ImmutableList;I)Z

    move-result p0

    return p0
.end method

.method public static getEsimSlotId(Landroid/content/Context;)I
    .locals 2

    .line 187
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 188
    invoke-static {p0}, Lcom/android/settings/network/UiccSlotUtil;->getSlotInfos(Landroid/telephony/TelephonyManager;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 190
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 198
    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstEsimSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccSlotUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method static getExcludedLogicalSlotIndex(Ljava/util/Collection;Ljava/util/Collection;Landroid/telephony/SubscriptionInfo;Z)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/telephony/SubscriptionInfo;",
            "Z)I"
        }
    .end annotation

    const-string v0, "UiccSlotUtil"

    if-nez p3, :cond_0

    const-string p0, "In the ss mode."

    .line 366
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "The removedSubInfo is not null"

    .line 371
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    return p0

    :cond_1
    const-string p2, "The removedSubInfo is null"

    .line 376
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    .line 378
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;-><init>()V

    .line 387
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda3;-><init>()V

    .line 388
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 389
    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 p1, -0x1

    .line 390
    invoke-virtual {p0, p1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    return p0
.end method

.method private static getInactiveRemovableSlot([Landroid/telephony/UiccSlotInfo;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 250
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_2

    .line 251
    aget-object v1, p0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p0, p1

    .line 252
    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p0, p1

    .line 253
    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    aget-object v1, p0, p1

    .line 254
    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    array-length v1, p0

    if-ge p1, v1, :cond_3

    aget-object v1, p0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 262
    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/UiccPortInfo;

    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result p0

    if-nez p0, :cond_2

    return p1

    :cond_2
    return v0

    .line 260
    :cond_3
    new-instance p0, Lcom/android/settings/network/UiccSlotsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The given slotId is not a removable slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/UiccSlotsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 247
    :cond_4
    new-instance p0, Lcom/android/settings/network/UiccSlotsException;

    const-string p1, "UiccSlotInfo is null"

    invoke-direct {p0, p1}, Lcom/android/settings/network/UiccSlotsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSlotInfos(Landroid/telephony/TelephonyManager;)Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroid/telephony/UiccSlotInfo;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 81
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static isTargetSlotActive(Ljava/util/Collection;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;II)Z"
        }
    .end annotation

    .line 206
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda4;-><init>(II)V

    .line 207
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getEsimSlotId$0(Lcom/google/common/collect/ImmutableList;I)Z
    .locals 0

    .line 192
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/UiccSlotInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getExcludedLogicalSlotIndex$2(Ljava/util/Collection;Landroid/telephony/UiccSlotMapping;)Z
    .locals 2

    .line 380
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 381
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getExcludedLogicalSlotIndex$3(Landroid/telephony/UiccSlotMapping;)I
    .locals 0

    .line 388
    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isTargetSlotActive$1(IILandroid/telephony/UiccSlotMapping;)Z
    .locals 1

    .line 208
    invoke-virtual {p2}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 209
    invoke-virtual {p2}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static performSwitchToSlot(Landroid/telephony/TelephonyManager;Ljava/util/Collection;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    .line 218
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "euicc_switch_slot_timeout_millis"

    const-wide/16 v2, 0x61a8

    .line 217
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 222
    :try_start_0
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 223
    new-instance v4, Lcom/android/settings/network/CarrierConfigChangedReceiver;

    invoke-direct {v4, v3}, Lcom/android/settings/network/CarrierConfigChangedReceiver;-><init>(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 224
    :try_start_1
    invoke-virtual {v4, p2}, Lcom/android/settings/network/CarrierConfigChangedReceiver;->registerOn(Landroid/content/Context;)V

    .line 225
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setSimSlotMapping(Ljava/util/Collection;)V

    .line 226
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    invoke-virtual {p2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, v4

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 228
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const-string p1, "UiccSlotUtil"

    const-string v0, "Failed switching to physical slot."

    .line 229
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p2, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {p2, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    :cond_1
    throw p0
.end method

.method static prepareUiccSlotMappings(Ljava/util/Collection;ZIII)Ljava/util/Collection;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;ZIII)",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation

    const-string v0, "UiccSlotUtil"

    const/4 v1, -0x1

    if-ne p4, v1, :cond_0

    const-string p1, "There is no removedLogicalSlotId. Do nothing."

    .line 306
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 313
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v2, "Create new SimSlotMapping. Remove the UiccSlotMapping of logicalSlot%d, and insert PhysicalSlotId%d-Port%d"

    .line 310
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 318
    new-instance v2, Landroid/telephony/UiccSlotMapping;

    invoke-direct {v2, p3, p2, v3}, Landroid/telephony/UiccSlotMapping;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v4

    .line 322
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/settings/network/UiccSlotUtil$$ExternalSyntheticLambda2;-><init>()V

    .line 323
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 324
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 325
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccSlotMapping;

    .line 326
    invoke-virtual {v2}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v4

    if-ne v4, p4, :cond_3

    if-nez p1, :cond_2

    .line 329
    new-instance v4, Landroid/telephony/UiccSlotMapping;

    .line 330
    invoke-virtual {v2}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v2

    invoke-direct {v4, p3, p2, v2}, Landroid/telephony/UiccSlotMapping;-><init>(III)V

    .line 329
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 338
    new-instance v4, Landroid/telephony/UiccSlotMapping;

    invoke-virtual {v2}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result v5

    .line 339
    invoke-virtual {v2}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v2

    add-int/lit8 v6, v3, 0x1

    invoke-direct {v4, v5, v2, v3}, Landroid/telephony/UiccSlotMapping;-><init>(III)V

    move-object v2, v4

    move v3, v6

    .line 337
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The new SimSlotMapping: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static declared-synchronized switchToEuiccSlot(Landroid/content/Context;IILandroid/telephony/SubscriptionInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    const-class v0, Lcom/android/settings/network/UiccSlotUtil;

    monitor-enter v0

    .line 158
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 163
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "UiccSlotUtil"

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The SimSlotMapping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {v2, p1, p2}, Lcom/android/settings/network/UiccSlotUtil;->isTargetSlotActive(Ljava/util/Collection;II)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "UiccSlotUtil"

    const-string p1, "The slot is active, then the sim can enable directly."

    .line 167
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit v0

    return-void

    .line 171
    :cond_0
    :try_start_1
    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 174
    invoke-static {v3}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v3

    .line 175
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    .line 173
    invoke-static {v2, v3, p3, v4}, Lcom/android/settings/network/UiccSlotUtil;->getExcludedLogicalSlotIndex(Ljava/util/Collection;Ljava/util/Collection;Landroid/telephony/SubscriptionInfo;Z)I

    move-result p3

    const/4 v3, 0x0

    .line 177
    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/settings/network/UiccSlotUtil;->prepareUiccSlotMappings(Ljava/util/Collection;ZIII)Ljava/util/Collection;

    move-result-object p1

    .line 176
    invoke-static {v1, p1, p0}, Lcom/android/settings/network/UiccSlotUtil;->performSwitchToSlot(Landroid/telephony/TelephonyManager;Ljava/util/Collection;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    monitor-exit v0

    return-void

    .line 159
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Do not call switchToRemovableSlot on the main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchToRemovableSlot(ILandroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    const-class v0, Lcom/android/settings/network/UiccSlotUtil;

    monitor-enter v0

    const/4 v1, 0x0

    .line 97
    :try_start_0
    invoke-static {p1, p0, v1}, Lcom/android/settings/network/UiccSlotUtil;->switchToRemovableSlot(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchToRemovableSlot(Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/settings/network/UiccSlotsException;
        }
    .end annotation

    const-class v0, Lcom/android/settings/network/UiccSlotUtil;

    monitor-enter v0

    .line 114
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 119
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings/network/UiccSlotUtil;->getInactiveRemovableSlot([Landroid/telephony/UiccSlotInfo;I)I

    move-result p1

    const-string v2, "UiccSlotUtil"

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The InactiveRemovableSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 124
    monitor-exit v0

    return-void

    .line 127
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "UiccSlotUtil"

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The SimSlotMapping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 133
    invoke-static {v3}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v3

    .line 134
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    .line 132
    invoke-static {v2, v3, p2, v4}, Lcom/android/settings/network/UiccSlotUtil;->getExcludedLogicalSlotIndex(Ljava/util/Collection;Ljava/util/Collection;Landroid/telephony/SubscriptionInfo;Z)I

    move-result p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 136
    invoke-static {v2, v3, p1, v4, p2}, Lcom/android/settings/network/UiccSlotUtil;->prepareUiccSlotMappings(Ljava/util/Collection;ZIII)Ljava/util/Collection;

    move-result-object p1

    .line 135
    invoke-static {v1, p1, p0}, Lcom/android/settings/network/UiccSlotUtil;->performSwitchToSlot(Landroid/telephony/TelephonyManager;Ljava/util/Collection;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit v0

    return-void

    .line 115
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string p1, "Do not call switchToRemovableSlot on the main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
