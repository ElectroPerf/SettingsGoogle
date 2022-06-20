.class public Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;
.super Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;
.source "PowerUsageFeatureProviderGoogleImpl.java"


# static fields
.field static final ACTION_RESUME_CHARGING:Ljava/lang/String; = "PNW.defenderResumeCharging.settings"

.field static final AVERAGE_BATTERY_LIFE_COL:Ljava/lang/String; = "average_battery_life"

.field static final BATTERY_ESTIMATE_BASED_ON_USAGE_COL:Ljava/lang/String; = "is_based_on_usage"

.field static final BATTERY_ESTIMATE_COL:Ljava/lang/String; = "battery_estimate"

.field static final BATTERY_LEVEL_COL:Ljava/lang/String; = "battery_level"

.field static final CUSTOMIZED_TO_USER:I = 0x1

.field static final GFLAG_ADDITIONAL_BATTERY_INFO_ENABLED:Ljava/lang/String; = "settingsgoogle:additional_battery_info_enabled"

.field static final GFLAG_BATTERY_ADVANCED_UI_ENABLED:Ljava/lang/String; = "settingsgoogle:battery_advanced_ui_enabled"

.field static final GFLAG_POWER_ACCOUNTING_TOGGLE_ENABLED:Ljava/lang/String; = "settingsgoogle:power_accounting_toggle_enabled"

.field static final IS_EARLY_WARNING_COL:Ljava/lang/String; = "is_early_warning"

.field static final NEED_EARLY_WARNING:I = 0x1

.field private static final PACKAGES_SERVICE:[Ljava/lang/String;

.field static final PACKAGE_NAME_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field static final TIMESTAMP_COL:Ljava/lang/String; = "timestamp_millis"

.field static sChartConfigurationLoaded:Z

.field private static sChartGraphEnabled:Z

.field private static sChartGraphSlotsEnabled:Z


# instance fields
.field mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.google.android.gms"

    const-string v1, "com.google.android.apps.gcs"

    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->PACKAGES_SERVICE:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->sChartConfigurationLoaded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getAdaptiveChargingManager()Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    return-object p0
.end method

.method private getEnhancedBatteryPredictionCurveUri()Landroid/net/Uri;
    .locals 1

    .line 237
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 238
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "com.google.android.apps.turbo.estimated_time_remaining"

    .line 239
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "discharge_curve"

    .line 240
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getEnhancedBatteryPredictionUri()Landroid/net/Uri;
    .locals 1

    .line 229
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 230
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "com.google.android.apps.turbo.estimated_time_remaining"

    .line 231
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "time_remaining"

    .line 232
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private isSettingsIntelligenceExist(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    .line 378
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.google.android.settings.intelligence"

    const/16 v1, 0x200

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 381
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x1

    :catch_0
    return p0
.end method

.method private loadChartConfiguration(Landroid/content/Context;)V
    .locals 3

    .line 308
    sget-boolean v0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->sChartConfigurationLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->isSettingsIntelligenceExist(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 313
    invoke-static {p1}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->isContentProviderEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->sChartGraphEnabled:Z

    if-eqz p0, :cond_2

    const-string p0, "com.google.android.settings.intelligence"

    const-string v2, "BatteryUsage__is_time_slot_supported"

    .line 315
    invoke-static {p1, p0, v2, v1}, Lcom/google/android/settings/experiments/PhenotypeProxy;->getFlagByPackageAndKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v0

    :cond_2
    sput-boolean v1, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->sChartGraphSlotsEnabled:Z

    .line 319
    sput-boolean v0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->sChartConfigurationLoaded:Z

    return-void
.end method


# virtual methods
.method public getAdvancedUsageScreenInfoString()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f04020b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryHistory(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation

    .line 345
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object p0

    const/4 v0, 0x1

    .line 344
    invoke-static {p1, p0, v0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->getHistoryMap(Landroid/content/Context;Ljava/time/Clock;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryHistoryUri()Landroid/net/Uri;
    .locals 0

    .line 350
    sget-object p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public getEarlyWarningSignal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .line 261
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 262
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "com.google.android.apps.turbo.estimated_time_remaining"

    .line 263
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "early_warning"

    .line 264
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "id"

    .line 265
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 267
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 275
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 276
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "is_early_warning"

    .line 278
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 277
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    move p1, v0

    .line 280
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    .line 274
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    .line 280
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return p1
.end method

.method public getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;
    .locals 8

    .line 150
    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->getEnhancedBatteryPredictionUri()Landroid/net/Uri;

    move-result-object v1

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 155
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "is_based_on_usage"

    .line 157
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    .line 160
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    move v1, p1

    :cond_1
    :goto_0
    move v3, v1

    const-string p1, "average_battery_life"

    .line 164
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_3

    .line 167
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long p1, v4, v1

    if-eqz p1, :cond_3

    const-wide/16 v0, 0xf

    .line 170
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 171
    invoke-static {v4, v5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 172
    invoke-static {v6, v7}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 174
    :cond_2
    invoke-static {v4, v5, v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->roundTimeToNearestThreshold(JJ)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_1

    :cond_3
    move-wide v4, v1

    :goto_1
    const-string p1, "battery_estimate"

    .line 181
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 183
    new-instance p1, Lcom/android/settingslib/fuelgauge/Estimate;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 153
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_4
    if-eqz p0, :cond_5

    .line 185
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnhancedBatteryPredictionCurve(Landroid/content/Context;J)Landroid/util/SparseIntArray;
    .locals 6

    .line 192
    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->getEnhancedBatteryPredictionCurveUri()Landroid/net/Uri;

    move-result-object v1

    const/4 p0, 0x0

    .line 193
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :cond_1
    :try_start_1
    const-string v0, "timestamp_millis"

    .line 197
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "battery_level"

    .line 198
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 199
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 200
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    sub-long/2addr v3, p2

    long-to-int v3, v3

    .line 202
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 201
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :cond_2
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catchall_0
    move-exception p2

    .line 193
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object p0
.end method

.method public getHideApplicationEntries(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 0

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f01000e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getHideApplicationSummary(Landroid/content/Context;)[Ljava/lang/CharSequence;
    .locals 0

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f01000f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getHideBackgroundUsageTimeSet(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f01000d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 356
    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getResumeChargeIntent()Landroid/content/Intent;
    .locals 1

    .line 336
    new-instance p0, Landroid/content/Intent;

    const-string v0, "PNW.defenderResumeCharging.settings"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.systemui"

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x50000000

    .line 338
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public isAdaptiveChargingSupported()Z
    .locals 0

    .line 324
    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->getAdaptiveChargingManager()Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public isChartGraphEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->loadChartConfiguration(Landroid/content/Context;)V

    .line 298
    sget-boolean p0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->sChartGraphEnabled:Z

    return p0
.end method

.method public isChartGraphSlotsEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->loadChartConfiguration(Landroid/content/Context;)V

    .line 304
    sget-boolean p0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->sChartGraphSlotsEnabled:Z

    return p0
.end method

.method public isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;->isTurboEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 216
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string p1, "com.google.android.apps.turbo"

    const/16 v1, 0x200

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 219
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method isTurboEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "com.google.android.apps.turbo"

    const-string v0, "NudgesBatteryEstimates__estimated_time_remaining_provider_enabled"

    const/4 v1, 0x0

    .line 289
    invoke-static {p1, p0, v0, v1}, Lcom/google/android/settings/experiments/PhenotypeProxy;->getFlagByPackageAndKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method
