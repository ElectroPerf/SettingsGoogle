.class public Lcom/android/settings/network/ims/VolteQueryImsState;
.super Lcom/android/settings/network/ims/ImsQueryController;
.source "VolteQueryImsState.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, v0, v1, v0}, Lcom/android/settings/network/ims/ImsQueryController;-><init>(III)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mContext:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    return-void
.end method


# virtual methods
.method public isAllowUserControl()Z
    .locals 2

    .line 114
    iget v0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isTtyEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/ImsQueryController;->isTtyOnVolteEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isEnabledByUser()Z
    .locals 1

    .line 134
    iget v0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 137
    :cond_0
    iget v0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isEnabledByUser(I)Z

    move-result p0

    return p0
.end method

.method isEnabledByUser(I)Z
    .locals 0

    .line 62
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 65
    :cond_0
    new-instance p0, Lcom/android/settings/network/ims/ImsQueryEnhanced4gLteModeUserSetting;

    invoke-direct {p0, p1}, Lcom/android/settings/network/ims/ImsQueryEnhanced4gLteModeUserSetting;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/settings/network/ims/ImsQueryEnhanced4gLteModeUserSetting;->query()Z

    move-result p0

    return p0
.end method

.method public isReadyToVoLte()Z
    .locals 4

    .line 94
    iget v0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isVoLteProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 101
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/ImsQueryController;->isServiceStateReady(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get VoLte service status. subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "VolteQueryImsState"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method isTtyEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 124
    const-class p0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 125
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVoImsOptInEnabled()Z
    .locals 1

    .line 146
    iget p0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object p0

    const/16 v0, 0x44

    .line 147
    invoke-virtual {p0, v0}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVoLteProvisioned()Z
    .locals 4

    .line 74
    iget v0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 77
    :cond_0
    iget v0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/ImsQueryController;->isProvisionedOnDevice(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 81
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/ImsQueryController;->isEnabledByPlatform(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to get VoLte supporting status. subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/ims/VolteQueryImsState;->mSubId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "VolteQueryImsState"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
