.class public Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;
.super Ljava/lang/Object;
.source "BatteryOptimizeUtils.java"


# instance fields
.field mAllowListed:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mMode:I

.field private final mPackageName:Ljava/lang/String;

.field mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

.field private final mUid:I


# direct methods
.method public static synthetic $r8$lambda$SxSQ1wyoKqvSArd-yNT0Njnn_QU(Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->lambda$setAppUsageState$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    .line 63
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    .line 64
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 65
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 66
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    .line 67
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x46

    .line 68
    invoke-virtual {p1, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    .line 69
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {p1, p3}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    return-void
.end method

.method public static getAppOptimizationMode(IZ)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    if-nez p1, :cond_2

    if-nez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setAppUsageState$0(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p0, "BatteryOptimizeUtils"

    const-string/jumbo p1, "set unknown app optimization mode."

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppOptimizationMode(IZ)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppOptimizationMode(IZ)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppOptimizationMode(IZ)V

    :goto_0
    return-void
.end method

.method private refreshState()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    .line 154
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    const/16 v3, 0x46

    .line 155
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    .line 158
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string/jumbo p0, "refresh %s state, allowlisted = %s, mode = %d"

    .line 156
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryOptimizeUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setAppOptimizationMode(IZ)V
    .locals 3

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mUid:I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 142
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->addApp(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->removeApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "set OPTIMIZED failed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BatteryOptimizeUtils"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getAppOptimizationMode()I
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->refreshState()V

    .line 90
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    invoke-static {v0, p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(IZ)I

    move-result p0

    return p0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, "unknown"

    :cond_0
    return-object p0
.end method

.method public isSystemOrDefaultApp()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->refreshList()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isSysAllowlisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPowerAllowListBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, p0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isDefaultActiveApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isValidPackageName()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAppUsageState(I)V
    .locals 2

    .line 95
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mMode:I

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mAllowListed:Z

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(IZ)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "set the same optimization mode for: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryOptimizeUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
