.class public Lcom/android/settings/network/SubscriptionUtil;
.super Ljava/lang/Object;
.source "SubscriptionUtil.java"


# static fields
.field private static sActiveResultsForTesting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sAvailableResultsForTesting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0k_lY7BFZ2diQtDExLaZqFayoBI(Landroid/os/ParcelUuid;Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$findAllSubscriptionsInGroup$13(Landroid/os/ParcelUuid;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8nAEcdbXurkTrNXGLUMcO1-AVzQ(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$11(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E0UGhSa4weEC3imZpd7SetzczSs(Ljava/util/Set;Landroid/content/Context;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$5(Ljava/util/Set;Landroid/content/Context;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JuZkse386ToZhfGX3F53Ok9bGEc(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$10(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NVAJFNo4W4bIsrwhCFdkBeDoVO0(Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getSubscriptionOrDefault$14(Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ovf4UIx-T2aQXvAcpNdfPnhfEvs(ILandroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getSubById$12(ILandroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Owm7jBe9q2CCZ9CTzAPX1-2tSD0(Ljava/util/Set;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$9(Ljava/util/Set;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PjzOm5acopRoD6COie_8YL21svo(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$1(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UyGmnAS3aoptCkwwmzE5QiQDQyI(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$0(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bexQ_iroAVUGXryscrzHW-99Gbk(Ljava/util/Set;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$3(Ljava/util/Set;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gkwYNWZI4bLYONSV4BYKBMwHHRo(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$8(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iMk67Nhu5Vsnp_vxsZaZmgTHHAM(Ljava/util/function/Supplier;Ljava/util/Set;Landroid/content/Context;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$6(Ljava/util/function/Supplier;Ljava/util/Set;Landroid/content/Context;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j_ohNwU1RifU_viF28BY4FLGeaA(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$4(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$le8gPLBhMQqq_IQAuBdFdovHEy0(ILcom/android/settings/network/helper/SubscriptionAnnotation;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getSubscription$15(ILcom/android/settings/network/helper/SubscriptionAnnotation;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qwmF36Y1SIrFufvBTTao7Y0eQhU(Ljava/util/Set;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$7(Ljava/util/Set;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$x3gCPEeoiNrndlz5BbiJYWUEFoY(Landroid/content/Context;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->lambda$getUniqueSubscriptionDisplayNames$2(Landroid/content/Context;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static findAllSubscriptionsInGroup(Landroid/telephony/SubscriptionManager;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SubscriptionManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 518
    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 520
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 522
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    .line 524
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 527
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 533
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda14;

    invoke-direct {p1, v0}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda14;-><init>(Landroid/os/ParcelUuid;)V

    .line 534
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 535
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 529
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SubscriptionManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/android/settings/network/SubscriptionUtil;->sActiveResultsForTesting:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 82
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    .line 84
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    return-object p0
.end method

.method public static getAvailableSubscription(Landroid/content/Context;Lcom/android/settings/network/ProxySubscriptionManager;I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    .line 124
    invoke-virtual {p1, p2}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 129
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 132
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getUiccSlotsInfo(Landroid/content/Context;)[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    .line 133
    invoke-virtual {p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionsInfo()Ljava/util/List;

    move-result-object p1

    .line 132
    invoke-static {p0, v2, p1, p2}, Lcom/android/settings/network/SubscriptionUtil;->isPrimarySubscriptionWithinSameUuid([Landroid/telephony/UiccSlotInfo;Landroid/os/ParcelUuid;Ljava/util/List;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method public static getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/android/settings/network/SubscriptionUtil;->sAvailableResultsForTesting:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getDefaultDataSubscriptionId()I
    .locals 1

    .line 648
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getDefaultSimConfig(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 6

    .line 600
    invoke-static {}, Lcom/android/settings/network/SubscriptionUtil;->getDefaultVoiceSubscriptionId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 601
    :goto_0
    invoke-static {}, Lcom/android/settings/network/SubscriptionUtil;->getDefaultSmsSubscriptionId()I

    move-result v3

    if-ne p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 602
    :goto_1
    invoke-static {}, Lcom/android/settings/network/SubscriptionUtil;->getDefaultDataSubscriptionId()I

    move-result v4

    if-ne p1, v4, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 608
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    if-eqz p1, :cond_4

    const p1, 0x7f0407eb

    .line 611
    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getResForDefaultConfig(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 610
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz v0, :cond_5

    const p1, 0x7f0407ea

    .line 616
    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getResForDefaultConfig(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v3, :cond_6

    const p1, 0x7f0407ec

    .line 621
    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getResForDefaultConfig(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 628
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f04130d

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultSmsSubscriptionId()I
    .locals 1

    .line 644
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    return v0
.end method

.method private static getDefaultSubscriptionSelection(Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;)",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda3;-><init>()V

    .line 661
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda15;-><init>()V

    .line 662
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 663
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    :goto_0
    return-object v0
.end method

.method private static getDefaultVoiceSubscriptionId()I
    .locals 1

    .line 640
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getFirstRemovableSubscription(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;
    .locals 8

    .line 564
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 565
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 566
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 567
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SubscriptionUtil"

    if-nez v0, :cond_0

    const-string p0, "UICC cards info list is empty."

    .line 569
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 572
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "All subscription info list is empty."

    .line 574
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 577
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccCardInfo;

    if-nez v3, :cond_3

    const-string v3, "Got null card."

    .line 579
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/UiccCardInfo;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 583
    invoke-virtual {v3}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    goto :goto_1

    .line 588
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target removable cardId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 591
    invoke-virtual {v3}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v6

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v7

    if-ne v6, v7, :cond_5

    return-object v5

    .line 584
    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip embedded card or invalid cardId on slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v3}, Landroid/telephony/UiccCardInfo;->getPhysicalSlotIndex()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 584
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method public static getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "SubscriptionUtil"

    const-string p1, "Invalid subscription."

    .line 543
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 547
    :cond_0
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 550
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 549
    invoke-virtual {p0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object p0

    .line 551
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 554
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 555
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhoneId(Landroid/content/Context;I)I
    .locals 1

    .line 383
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 387
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 391
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    return p0
.end method

.method private static getResForDefaultConfig(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 400
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 401
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 408
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 411
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 414
    invoke-static {v0, p0, v4}, Lcom/android/settings/network/SubscriptionUtil;->isSubscriptionVisible(Landroid/telephony/SubscriptionManager;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    if-nez v5, :cond_3

    .line 419
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 421
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 422
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-eq v6, v7, :cond_1

    .line 425
    :cond_4
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 426
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public static getSubById(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 478
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    .line 479
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 480
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 481
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 482
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method private static getSubscription(Landroid/content/Context;ILjava/util/function/Function;)Landroid/telephony/SubscriptionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/util/List<",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;",
            "Lcom/android/settings/network/helper/SubscriptionAnnotation;",
            ">;)",
            "Landroid/telephony/SubscriptionInfo;"
        }
    .end annotation

    .line 683
    new-instance v0, Lcom/android/settings/network/helper/SelectableSubscriptions;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/helper/SelectableSubscriptions;-><init>(Landroid/content/Context;Z)V

    .line 684
    invoke-virtual {v0}, Lcom/android/settings/network/helper/SelectableSubscriptions;->call()Ljava/util/List;

    move-result-object p0

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscriptionUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda3;-><init>()V

    .line 687
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda16;-><init>(I)V

    .line 688
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 689
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 691
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 693
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getSubscriptionOrDefault(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 668
    :cond_0
    new-instance v0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda10;-><init>()V

    .line 667
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/settings/network/SubscriptionUtil;->getSubscription(Landroid/content/Context;ILjava/util/function/Function;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getUiccSlotsInfo(Landroid/content/Context;)[Landroid/telephony/UiccSlotInfo;
    .locals 1

    .line 143
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 144
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 361
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Ljava/lang/Integer;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getUniqueSubscriptionDisplayName(Ljava/lang/Integer;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 341
    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayNames(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    const-string v0, ""

    .line 342
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static getUniqueSubscriptionDisplayNames(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 275
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 277
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/stream/Stream;

    new-instance v3, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    .line 278
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda3;-><init>()V

    .line 279
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 280
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 284
    new-instance v3, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v2, p0}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Supplier;Ljava/util/Set;Landroid/content/Context;)V

    .line 310
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 311
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;)V

    .line 312
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda6;-><init>()V

    .line 313
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 314
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 316
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    new-instance v1, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda7;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda8;-><init>()V

    new-instance v1, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda9;-><init>()V

    .line 322
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method static isInactiveInsertedPSim(Landroid/telephony/UiccSlotInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccPortInfo;

    .line 95
    invoke-virtual {v1}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isPrimarySubscriptionWithinSameUuid([Landroid/telephony/UiccSlotInfo;Landroid/os/ParcelUuid;Ljava/util/List;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/telephony/UiccSlotInfo;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 159
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 160
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 161
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v6

    if-nez v6, :cond_2

    .line 164
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_2
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-eq v6, v5, :cond_3

    .line 168
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p0, :cond_8

    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 179
    invoke-static {v0, p3}, Lcom/android/settings/network/SubscriptionUtil;->searchForSubscriptionId(Ljava/util/List;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p3

    if-nez p3, :cond_5

    return p2

    .line 184
    :cond_5
    array-length v0, p0

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_7

    aget-object v2, p0, v1

    if-eqz v2, :cond_6

    .line 185
    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getIsEuicc()Z

    move-result v3

    if-nez v3, :cond_6

    .line 186
    invoke-virtual {v2}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v2}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v2

    .line 187
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v2, v3, :cond_6

    return p1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return p2

    .line 196
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_d

    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_9

    return p2

    .line 200
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_b

    .line 201
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne p0, p3, :cond_a

    goto :goto_2

    :cond_a
    move p1, p2

    :goto_2
    return p1

    .line 203
    :cond_b
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    if-ne p0, p3, :cond_c

    goto :goto_3

    :cond_c
    move p1, p2

    :goto_3
    return p1

    .line 209
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, p2

    move v1, v0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 210
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p3, :cond_e

    move v3, p1

    goto :goto_5

    :cond_e
    move v3, p2

    .line 211
    :goto_5
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-eq v2, v5, :cond_10

    if-eqz v3, :cond_f

    return p1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    or-int/2addr v1, v3

    goto :goto_4

    :cond_11
    if-lez v0, :cond_12

    return p2

    :cond_12
    return v1
.end method

.method public static isSubscriptionVisible(Landroid/telephony/SubscriptionManager;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 498
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 502
    :cond_1
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 503
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 504
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges()Z

    move-result p1

    if-nez p1, :cond_2

    .line 505
    invoke-virtual {p0, p2}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method private static synthetic lambda$findAllSubscriptionsInGroup$13(Landroid/os/ParcelUuid;Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    .line 534
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSubById$12(ILandroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 480
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSubscription$15(ILcom/android/settings/network/helper/SubscriptionAnnotation;)Z
    .locals 0

    .line 688
    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubscriptionId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSubscriptionOrDefault$14(Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;
    .locals 0

    .line 669
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getDefaultSubscriptionSelection(Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$0(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 261
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$1(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;
    .locals 2

    .line 264
    new-instance v0, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;

    invoke-direct {v0}, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;-><init>()V

    .line 265
    iput-object p1, v0, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->subscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 266
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CARD"

    .line 267
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f041306

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, v0, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$10(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/Integer;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->subscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$11(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->uniqueName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$2(Landroid/content/Context;)Ljava/util/stream/Stream;
    .locals 2

    .line 257
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda12;-><init>()V

    .line 259
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$3(Ljava/util/Set;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Z
    .locals 0

    .line 278
    iget-object p1, p1, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$4(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$5(Ljava/util/Set;Landroid/content/Context;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;
    .locals 1

    .line 285
    iget-object v0, p2, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 287
    iget-object p0, p2, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->subscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p1, p0}, Lcom/android/settingslib/DeviceInfoUtils;->getBidiFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 295
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 296
    iget-object p0, p2, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    iput-object p0, p2, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->uniqueName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 298
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->uniqueName:Ljava/lang/CharSequence;

    goto :goto_1

    .line 302
    :cond_3
    iget-object p0, p2, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    iput-object p0, p2, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->uniqueName:Ljava/lang/CharSequence;

    :goto_1
    return-object p2
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$6(Ljava/util/function/Supplier;Ljava/util/Set;Landroid/content/Context;)Ljava/util/stream/Stream;
    .locals 1

    .line 284
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda11;-><init>(Ljava/util/Set;Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$7(Ljava/util/Set;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Z
    .locals 0

    .line 312
    iget-object p1, p1, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->uniqueName:Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$8(Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->uniqueName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$getUniqueSubscriptionDisplayNames$9(Ljava/util/Set;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;
    .locals 1

    .line 317
    iget-object v0, p1, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->uniqueName:Ljava/lang/CharSequence;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->subscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 319
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;->uniqueName:Ljava/lang/CharSequence;

    :cond_0
    return-object p1
.end method

.method private static searchForSubscriptionId(Ljava/util/List;I)Landroid/telephony/SubscriptionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)",
            "Landroid/telephony/SubscriptionInfo;"
        }
    .end annotation

    .line 228
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 229
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setActiveSubscriptionsForTesting(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 72
    sput-object p0, Lcom/android/settings/network/SubscriptionUtil;->sActiveResultsForTesting:Ljava/util/List;

    return-void
.end method

.method public static setAvailableSubscriptionsForTesting(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    sput-object p0, Lcom/android/settings/network/SubscriptionUtil;->sAvailableResultsForTesting:Ljava/util/List;

    return-void
.end method

.method public static showToggleForPhysicalSim(Landroid/telephony/SubscriptionManager;)Z
    .locals 0

    .line 376
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result p0

    return p0
.end method

.method public static startDeleteEuiccSubscriptionDialogActivity(Landroid/content/Context;I)V
    .locals 1

    .line 456
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SubscriptionUtil"

    const-string p1, "Unable to delete subscription due to invalid subscription ID."

    .line 457
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 460
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/DeleteEuiccSubscriptionDialogActivity;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startToggleSubscriptionDialogActivity(Landroid/content/Context;IZ)V
    .locals 1

    .line 443
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SubscriptionUtil"

    const-string p1, "Unable to toggle subscription due to invalid subscription ID."

    .line 444
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 447
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/network/telephony/ToggleSubscriptionDialogActivity;->getIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
