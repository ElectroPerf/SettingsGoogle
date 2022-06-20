.class public Lcom/android/settings/fuelgauge/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;,
        Lcom/android/settings/fuelgauge/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public averageTimeToDischarge:J

.field public batteryLevel:I

.field public batteryPercentString:Ljava/lang/String;

.field public batteryStatus:I

.field public chargeLabel:Ljava/lang/CharSequence;

.field public discharging:Z

.field public isOverheated:Z

.field private mBatteryUsageStats:Landroid/os/BatteryUsageStats;

.field private mCharging:Z

.field public remainingLabel:Ljava/lang/CharSequence;

.field public remainingTimeUs:J

.field public statusLabel:Ljava/lang/String;

.field public suggestionLabel:Ljava/lang/String;

.field private timePeriod:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmCharging(Lcom/android/settings/fuelgauge/BatteryInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettimePeriod(Lcom/android/settings/fuelgauge/BatteryInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputtimePeriod(Lcom/android/settings/fuelgauge/BatteryInfo;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 7

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 252
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/BatteryInfo;-><init>()V

    .line 253
    iput-object p2, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 254
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v2

    iput v2, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    .line 255
    invoke-static {v2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const-string v2, "plugged"

    const/4 v3, 0x0

    .line 256
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    .line 257
    invoke-virtual {p3}, Lcom/android/settingslib/fuelgauge/Estimate;->getAverageDischargeTime()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    const-string v2, "health"

    .line 258
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->isOverheated:Z

    .line 262
    invoke-static {p0, p1, v0}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    const-string/jumbo v2, "status"

    .line 263
    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryStatus:I

    .line 265
    iget-boolean v2, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    if-nez v2, :cond_2

    .line 266
    invoke-static {p0, p6, p3, v1}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settingslib/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    goto :goto_1

    .line 268
    :cond_2
    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/BatteryInfo;Z)V

    :goto_1
    const-string p0, "BatteryInfo"

    const-string/jumbo p1, "time for getBatteryInfo"

    .line 271
    invoke-static {p0, p1, p4, p5}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/os/BatteryUsageStats;Z)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 16

    move-object/from16 v0, p0

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "BatteryInfo"

    const-string/jumbo v4, "time for getStats"

    .line 199
    invoke-static {v3, v4, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 203
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v4

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v5

    .line 207
    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "plugged"

    const/4 v9, -0x1

    .line 211
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_1

    if-eqz v4, :cond_1

    .line 214
    invoke-interface {v4, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 215
    invoke-interface {v4, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/Estimate;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 217
    invoke-static {v0, v4}, Lcom/android/settingslib/fuelgauge/Estimate;->storeCachedEstimate(Landroid/content/Context;Lcom/android/settingslib/fuelgauge/Estimate;)V

    const-string/jumbo v8, "time for enhanced BatteryInfo"

    .line 219
    invoke-static {v3, v8, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v4

    move-wide v4, v5

    move/from16 v6, p2

    .line 220
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v8, :cond_2

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getBatteryTimeRemainingMs()J

    move-result-wide v8

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0x0

    :goto_1
    move-wide v11, v8

    .line 225
    new-instance v4, Lcom/android/settingslib/fuelgauge/Estimate;

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JZJ)V

    const-string/jumbo v8, "time for regular BatteryInfo"

    .line 229
    invoke-static {v3, v8, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v4

    move-wide v4, v5

    move/from16 v6, p2

    .line 230
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settingslib/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryUsageStats;Z)V
    .locals 1

    .line 153
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;

    invoke-direct {v0, p2, p0, p3, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;-><init>(Landroid/os/BatteryUsageStats;Landroid/content/Context;ZLcom/android/settings/fuelgauge/BatteryInfo$Callback;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 189
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryUsageStats;Z)V

    return-void
.end method

.method private static updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/BatteryInfo;Z)V
    .locals 10

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    invoke-virtual {p2}, Landroid/os/BatteryUsageStats;->getChargeTimeRemainingMs()J

    move-result-wide v1

    const-string/jumbo p2, "status"

    const/4 v3, 0x1

    .line 279
    invoke-virtual {p1, p2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v4, 0x0

    .line 281
    iput-boolean v4, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    const/4 v5, 0x0

    .line 282
    iput-object v5, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    .line 283
    iget-boolean v6, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->isOverheated:Z

    const/4 v7, 0x5

    if-eqz v6, :cond_0

    if-eq p2, v7, :cond_0

    .line 284
    iput-object v5, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    const p1, 0x7f040fc4

    new-array p2, v3, [Ljava/lang/Object;

    .line 286
    iget-object p4, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object p4, p2, v4

    .line 287
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v6, v1, v8

    const/4 v8, 0x2

    if-lez v6, :cond_1

    if-eq p2, v7, :cond_1

    .line 289
    invoke-static {v1, v2}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide p1

    iput-wide p1, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 292
    invoke-static {p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    long-to-double p1, p1

    .line 290
    invoke-static {p0, p1, p2, v4, v3}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p1

    const p2, 0x7f040fc3

    const p4, 0x7f040fdc

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 296
    invoke-virtual {p0, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    new-array p4, v8, [Ljava/lang/Object;

    .line 298
    iget-object v0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object v0, p4, v4

    aput-object p1, p4, v3

    invoke-virtual {p0, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    goto :goto_1

    .line 301
    :cond_1
    invoke-static {p0, p1, p4}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object p0

    .line 302
    iput-object v5, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 303
    iget p1, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_2

    iget-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const p1, 0x7f040fc2

    new-array p2, v8, [Ljava/lang/Object;

    .line 304
    iget-object p4, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object p4, p2, v4

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v3

    .line 304
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    :goto_1
    return-void
.end method

.method private static updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settingslib/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 6

    .line 311
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->getEstimateMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 313
    iput-wide v0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 316
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    const/4 v2, 0x0

    .line 314
    invoke-static {p0, v4, v5, v3, v2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 322
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v3

    iget-object v5, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 324
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    .line 320
    :cond_0
    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 327
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    .line 326
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryTipStringFormatted(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    goto :goto_0

    .line 329
    :cond_1
    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 330
    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->suggestionLabel:Ljava/lang/String;

    .line 331
    iget-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settings/widget/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 8

    .line 69
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryInfo$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryInfo$1;-><init>(Lcom/android/settings/fuelgauge/BatteryInfo;Lcom/android/settings/widget/UsageView;Landroid/content/Context;)V

    .line 129
    array-length v2, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    const/4 v4, 0x0

    move v5, v4

    .line 130
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_0

    .line 131
    aget-object v6, p2, v5

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 133
    :cond_0
    array-length p2, p2

    aput-object v1, v2, p2

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->parseBatteryHistory([Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    const p2, 0x7f040619

    new-array v1, v3, [Ljava/lang/Object;

    .line 135
    iget-wide v5, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    .line 136
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 135
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 138
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long p0, v1, v5

    if-eqz p0, :cond_1

    const p0, 0x7f0410c9

    new-array v5, v3, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    .line 139
    div-long/2addr v1, v6

    .line 140
    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    .line 139
    invoke-virtual {v0, p0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p2, v0, v4

    aput-object p0, v0, v3

    .line 142
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public varargs parseBatteryHistory([Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 360
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 361
    invoke-virtual {v2}, Landroid/os/BatteryUsageStats;->iterateBatteryStatsHistory()Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v2

    .line 362
    new-instance v3, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const/4 v4, 0x1

    move/from16 v16, v4

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    .line 363
    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v21

    const/4 v6, 0x5

    if-eqz v21, :cond_7

    add-int/2addr v15, v4

    if-eqz v16, :cond_0

    .line 367
    iget-wide v4, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v19, v4

    const/16 v16, 0x0

    .line 369
    :cond_0
    iget-byte v4, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eq v4, v6, :cond_1

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 379
    :cond_1
    iget-wide v4, v3, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v12, 0x39ef8b000L

    add-long/2addr v8, v12

    cmp-long v6, v4, v8

    if-gtz v6, :cond_2

    iget-wide v8, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v12, 0x493e0

    add-long v12, v19, v12

    cmp-long v6, v8, v12

    if-gez v6, :cond_3

    :cond_2
    const-wide/16 v17, 0x0

    .line 384
    :cond_3
    iget-wide v12, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/16 v8, 0x0

    cmp-long v6, v17, v8

    if-nez v6, :cond_4

    sub-long v8, v12, v19

    sub-long v17, v4, v8

    :cond_4
    move-wide v8, v4

    .line 389
    :cond_5
    invoke-virtual {v3}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 391
    iget-wide v10, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    move v14, v15

    :cond_6
    const/4 v4, 0x1

    goto :goto_0

    :cond_7
    add-long/2addr v8, v10

    sub-long/2addr v8, v12

    const/4 v2, 0x0

    .line 400
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_8

    .line 401
    aget-object v4, v1, v2

    move-wide/from16 v10, v17

    invoke-interface {v4, v10, v11, v8, v9}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    move-wide/from16 v10, v17

    cmp-long v2, v8, v10

    if-lez v2, :cond_11

    .line 405
    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 406
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->iterateBatteryStatsHistory()Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 407
    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-ge v2, v14, :cond_11

    .line 408
    invoke-virtual {v3}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 409
    iget-wide v4, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v12, v4, v12

    add-long/2addr v8, v12

    sub-long v12, v8, v10

    const-wide/16 v15, 0x0

    cmp-long v7, v12, v15

    if-gez v7, :cond_9

    move-wide v12, v15

    :cond_9
    const/4 v7, 0x0

    .line 415
    :goto_3
    array-length v15, v1

    if-ge v7, v15, :cond_a

    .line 416
    aget-object v15, v1, v7

    invoke-interface {v15, v12, v13, v3}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    move-wide v12, v4

    move v7, v6

    goto :goto_8

    .line 420
    :cond_b
    iget-byte v4, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-eq v4, v6, :cond_d

    if-ne v4, v5, :cond_c

    goto :goto_4

    :cond_c
    move-wide v5, v12

    move-wide v12, v8

    goto :goto_6

    .line 422
    :cond_d
    :goto_4
    iget-wide v12, v3, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v7, v12, v10

    if-ltz v7, :cond_e

    goto :goto_5

    .line 425
    :cond_e
    iget-wide v12, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v12, v12, v19

    add-long/2addr v12, v10

    .line 427
    :goto_5
    iget-wide v5, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    :goto_6
    const/4 v15, 0x6

    const/4 v7, 0x5

    if-eq v4, v15, :cond_10

    if-ne v4, v7, :cond_f

    sub-long/2addr v8, v12

    .line 432
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v15, 0x36ee80

    cmp-long v4, v8, v15

    if-lez v4, :cond_10

    :cond_f
    const/4 v4, 0x0

    .line 433
    :goto_7
    array-length v8, v1

    if-ge v4, v8, :cond_10

    .line 434
    aget-object v8, v1, v4

    invoke-interface {v8}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataGap()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_10
    move-wide v8, v12

    move-wide v12, v5

    :goto_8
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_2

    :cond_11
    const/4 v5, 0x0

    .line 442
    :goto_9
    array-length v0, v1

    if-ge v5, v0, :cond_12

    .line 443
    aget-object v0, v1, v5

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingDone()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    return-void
.end method
