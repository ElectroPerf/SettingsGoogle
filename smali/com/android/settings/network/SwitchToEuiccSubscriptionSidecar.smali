.class public Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;
.super Lcom/android/settings/network/telephony/EuiccOperationSidecar;
.source "SwitchToEuiccSubscriptionSidecar.java"


# instance fields
.field private mCallbackIntent:Landroid/app/PendingIntent;

.field private mIsDuringSimSlotMapping:Z

.field private mPort:I

.field private mRemovedSubInfo:Landroid/telephony/SubscriptionInfo;

.field private mSubId:I


# direct methods
.method public static synthetic $r8$lambda$KtNo7XdkwX9EzOdnvVIhkHhxffQ(Landroid/telephony/UiccCardInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->lambda$isMultipleEnabledProfilesSupported$3(Landroid/telephony/UiccCardInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UdReOiSi5CM0QFfFhg_VC10C-5Y(Landroid/telephony/UiccSlotMapping;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->lambda$getTargetPortId$1(Landroid/telephony/UiccSlotMapping;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dnP0brLQHThtu0xLXIGrGTVS3kw(ILandroid/telephony/UiccSlotMapping;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->lambda$getTargetPortId$0(ILandroid/telephony/UiccSlotMapping;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qixTl5YxiPUD1rszmdum6KmIhAU(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->lambda$getTargetPortId$2(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;-><init>()V

    return-void
.end method

.method public static get(Landroid/app/FragmentManager;)Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;
    .locals 3

    .line 50
    const-class v0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    const-string v1, "SwitchToEuiccSidecar"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/android/settings/SidecarFragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;

    return-object p0
.end method

.method private getTargetPortId(ILandroid/telephony/SubscriptionInfo;)I
    .locals 3

    .line 120
    invoke-direct {p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->isMultipleEnabledProfilesSupported()Z

    move-result v0

    const-string v1, "SwitchToEuiccSidecar"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "The device is no MEP, port is 0"

    .line 121
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSlotMapping()Ljava/util/Collection;

    move-result-object p0

    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "In SS mode, the UiccSlotMapping: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda0;-><init>(I)V

    .line 132
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda1;-><init>()V

    .line 133
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 134
    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 139
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result p0

    return p0

    .line 153
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 156
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p0

    .line 157
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda2;-><init>()V

    .line 158
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda3;-><init>()V

    .line 159
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 160
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 161
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 162
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getPortIndex()I

    move-result p1

    if-ne p1, v2, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private getTargetSlot()I
    .locals 0

    .line 170
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/network/UiccSlotUtil;->getEsimSlotId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private isMultipleEnabledProfilesSupported()Z
    .locals 1

    .line 189
    iget-object p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "SwitchToEuiccSidecar"

    const-string v0, "UICC cards info list is empty."

    .line 191
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 194
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getTargetPortId$0(ILandroid/telephony/UiccSlotMapping;)Z
    .locals 0

    .line 132
    invoke-virtual {p1}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getTargetPortId$1(Landroid/telephony/UiccSlotMapping;)I
    .locals 0

    .line 133
    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getTargetPortId$2(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 158
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isMultipleEnabledProfilesSupported$3(Landroid/telephony/UiccCardInfo;)Z
    .locals 0

    .line 195
    invoke-virtual {p0}, Landroid/telephony/UiccCardInfo;->isMultipleEnabledProfilesSupported()Z

    move-result p0

    return p0
.end method

.method private onSwitchSlotSidecarStateChange()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->getState()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "SwitchToEuiccSidecar"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Failed to set SimSlotMapping"

    .line 182
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {v0}, Lcom/android/settings/SidecarFragment;->reset()V

    const-string v0, "Successfully SimSlotMapping. Start to enable/disable esim"

    .line 177
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->switchToSubscription()V

    :goto_0
    return-void
.end method

.method private switchToSubscription()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    iget v1, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mSubId:I

    iget v2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    iget-object p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, p0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public getReceiverAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.network.SWITCH_TO_SUBSCRIPTION"

    return-object p0
.end method

.method protected onActionReceived()V
    .locals 3

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mIsDuringSimSlotMapping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 208
    iput-boolean v0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mIsDuringSimSlotMapping:Z

    .line 209
    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-direct {p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->getTargetSlot()I

    move-result v1

    iget v2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    iget-object p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mRemovedSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/network/SwitchSlotSidecar;->runSwitchToEuiccSlot(IILandroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-super {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->onActionReceived()V

    :goto_0
    return-void
.end method

.method public onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    if-ne p1, v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->onSwitchSlotSidecarStateChange()V

    goto :goto_0

    :cond_0
    const-string p0, "SwitchToEuiccSidecar"

    const-string p1, "Received state change from a sidecar not expected."

    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public run(IILandroid/telephony/SubscriptionInfo;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->createCallbackIntent()Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mCallbackIntent:Landroid/app/PendingIntent;

    .line 89
    iput p1, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mSubId:I

    .line 90
    invoke-direct {p0}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->getTargetSlot()I

    move-result p1

    const/4 v2, 0x3

    const-string v3, "SwitchToEuiccSidecar"

    if-gez p1, :cond_0

    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "There is no esim, the TargetSlot is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    return-void

    :cond_0
    if-gez p2, :cond_1

    .line 99
    invoke-direct {p0, p1, p3}, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->getTargetPortId(ILandroid/telephony/SubscriptionInfo;)I

    move-result p2

    :cond_1
    iput p2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    .line 100
    iput-object p3, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mRemovedSubInfo:Landroid/telephony/SubscriptionInfo;

    new-array p2, v2, [Ljava/lang/Object;

    .line 101
    iget v2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mSubId:I

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    const-string/jumbo v1, "set esim into the SubId%d Slot%d:Port%d"

    .line 102
    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p2, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 106
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 111
    iput-boolean v0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mIsDuringSimSlotMapping:Z

    .line 112
    iget-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    const/4 p2, -0x1

    iget p3, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    iget-object p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, p3, p0}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(IILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object p2, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    iget p0, p0, Lcom/android/settings/network/SwitchToEuiccSubscriptionSidecar;->mPort:I

    invoke-virtual {p2, p1, p0, p3}, Lcom/android/settings/network/SwitchSlotSidecar;->runSwitchToEuiccSlot(IILandroid/telephony/SubscriptionInfo;)V

    :goto_0
    return-void
.end method
