.class public Lcom/android/settings/fuelgauge/BatteryUtils;
.super Ljava/lang/Object;
.source "BatteryUtils.java"


# static fields
.field private static sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# direct methods
.method public static synthetic $r8$lambda$gL3dV11xVhjQm81tt3GkEPnye00(Lcom/android/settings/fuelgauge/BatteryUtils;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->lambda$setForceAppStandby$0(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "appops"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 108
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;
    .locals 1

    .line 97
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isDataCorrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 100
    :cond_1
    sget-object p0, Lcom/android/settings/fuelgauge/BatteryUtils;->sInstance:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-object p0
.end method

.method private hasLauncherEntry([Ljava/lang/String;)Z
    .locals 4

    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 533
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x1c0200

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 546
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 547
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 548
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isBatteryDefenderOn(Lcom/android/settings/fuelgauge/BatteryInfo;)Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->isOverheated:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDataCorrupted()Z
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez p0, :cond_0

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

.method private isExcessiveBackgroundAnomaly(Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z
    .locals 0

    .line 506
    iget-object p0, p1, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSystemApp(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z
    .locals 6

    .line 516
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p2, v1

    .line 518
    :try_start_0
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 520
    iget v2, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    return v3

    :catch_0
    move-exception v3

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BatteryUtils"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isSystemUid(I)Z
    .locals 0

    .line 511
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/16 p1, 0x2710

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setForceAppStandby$0(IILjava/lang/String;)V
    .locals 6

    .line 347
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    .line 348
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 v1, 0x0

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p2

    move-object v3, p3

    .line 350
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->insertAction(IILjava/lang/String;J)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    .line 353
    invoke-virtual {v0, p0, p2, p3}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->deleteAction(IILjava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static logRuntime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public calculateBatteryPercent(DDI)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p3, v0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    div-double/2addr p1, p3

    int-to-double p3, p5

    mul-double/2addr p1, p3

    return-wide p1
.end method

.method public calculateLastFullChargeTime(Landroid/os/BatteryUsageStats;J)J
    .locals 0

    .line 306
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide p0

    sub-long/2addr p2, p0

    return-wide p2
.end method

.method public clearForceAppStandby(Ljava/lang/String;)Z
    .locals 3

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 366
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->isForceAppStandbyEnabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public getAppLongVersionCode(Ljava/lang/String;)J
    .locals 2

    .line 562
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 564
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryUtils"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getBatteryInfo(Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "BatteryUtils"

    .line 376
    iget-object v0, v1, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/BatteryStatsManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsManager;

    .line 380
    :try_start_0
    new-instance v4, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v4}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 381
    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v4

    .line 380
    invoke-virtual {v0, v4}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "getBatteryInfo() error from getBatteryUsageStats()"

    .line 383
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    new-instance v0, Landroid/os/BatteryUsageStats$Builder;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    .line 388
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 391
    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 394
    invoke-static {v6, v7}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v8

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getEnhancedEstimate()Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object v4

    if-nez v4, :cond_0

    .line 402
    new-instance v4, Lcom/android/settingslib/fuelgauge/Estimate;

    .line 403
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getBatteryTimeRemainingMs()J

    move-result-wide v14

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    :cond_0
    move-object v7, v4

    const-string v4, "BatteryInfoLoader post query"

    .line 408
    invoke-static {v2, v4, v11, v12}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 409
    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    move-object v6, v0

    invoke-static/range {v4 .. v10}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v1

    const-string v4, "BatteryInfoLoader.loadInBackground"

    .line 411
    invoke-static {v2, v4, v11, v12}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 414
    :try_start_1
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    const-string v0, "BatteryUsageStats.close() failed"

    .line 416
    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v1
.end method

.method getEnhancedEstimate()Lcom/android/settingslib/fuelgauge/Estimate;
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/Estimate;->getLastCacheUpdateTime(Landroid/content/Context;)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 426
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-gez v0, :cond_0

    .line 427
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/Estimate;->getCachedEstimateIfAvailable(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object p0

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    .line 429
    invoke-interface {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/fuelgauge/Estimate;->storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 0

    .line 444
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 446
    invoke-virtual {p0, p2, p3, p1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method getForegroundServiceTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 0

    .line 454
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 456
    invoke-virtual {p0, p2, p3, p1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 263
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method public getPackageUid(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

.method public isForceAppStandbyEnabled(ILjava/lang/String;)Z
    .locals 1

    .line 360
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHiddenSystemModule([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 224
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 225
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lcom/android/settingslib/applications/AppUtils;->isHiddenSystemModule(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isPreOApp(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 464
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 467
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x1a

    if-ge p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BatteryUtils"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isPreOApp([Ljava/lang/String;)Z
    .locals 4

    .line 476
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 480
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 481
    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public setForceAppStandby(ILjava/lang/String;I)V
    .locals 2

    .line 338
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 346
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/BatteryUtils;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public shouldHideAnomaly(Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;ILcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 500
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSystemUid(I)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1, v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 501
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isSystemApp(Landroid/content/pm/PackageManager;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->hasLauncherEntry([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 502
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings/fuelgauge/BatteryUtils;->isExcessiveBackgroundAnomaly(Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->isPreOApp([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method public shouldHideDevicePowerComponent(Landroid/os/BatteryConsumer;I)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x2

    if-eq p2, p0, :cond_0

    const/16 p0, 0x8

    if-eq p2, p0, :cond_0

    const/16 p0, 0xb

    if-eq p2, p0, :cond_0

    const/16 p0, 0x10

    if-eq p2, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public shouldHideUidBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 177
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumer(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldHideUidBatteryConsumer(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeSystem(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumerUnconditionally(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z

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

.method shouldHideUidBatteryConsumerUnconditionally(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z
    .locals 2

    .line 195
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isHiddenSystemModule([Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method
