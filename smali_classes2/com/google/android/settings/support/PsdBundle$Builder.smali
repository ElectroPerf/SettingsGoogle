.class public Lcom/google/android/settings/support/PsdBundle$Builder;
.super Ljava/lang/Object;
.source "PsdBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/support/PsdBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final CALL_STATISTICS_PATH:Ljava/lang/String;

.field private final DIAGNOSTICS_PATH:Ljava/lang/String;

.field private final TELEPHONY_AUTHORITY:Ljava/lang/String;

.field private mBatteryUsageStats:Landroid/os/BatteryUsageStats;

.field private mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private final mContext:Landroid/content/Context;

.field private mPsdValuesSize:J

.field private mPsdValuesSizeLimit:J

.field private mSignalKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Tu0nJ-sKP40i6WKJs_f6vsWw_mI(Landroid/os/UidBatteryConsumer;Landroid/os/UidBatteryConsumer;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/settings/support/PsdBundle$Builder;->lambda$addTopBatteryApps$0(Landroid/os/UidBatteryConsumer;Landroid/os/UidBatteryConsumer;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSignalKeys(Lcom/google/android/settings/support/PsdBundle$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalKeys:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSignalValues(Lcom/google/android/settings/support/PsdBundle$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalValues:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    .line 190
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;-><init>(Landroid/content/Context;JLcom/android/settings/fuelgauge/BatteryUtils;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;JLcom/android/settings/fuelgauge/BatteryUtils;)V
    .locals 2

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalKeys:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalValues:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 177
    iput-wide v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSize:J

    const-string v0, "com.google.android.connectivitymonitor.troubleshooterprovider"

    .line 182
    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->TELEPHONY_AUTHORITY:Ljava/lang/String;

    const-string v0, "call_statistics"

    .line 185
    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->CALL_STATISTICS_PATH:Ljava/lang/String;

    const-string v0, "diagnostics"

    .line 187
    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->DIAGNOSTICS_PATH:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    .line 196
    iput-wide p2, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSizeLimit:J

    .line 197
    iput-object p4, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method

.method private addTelephonyCursorSignals(Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 6

    .line 409
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 410
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.connectivitymonitor.troubleshooterprovider"

    .line 411
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 413
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 415
    iget-object p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/settings/support/PsdBundle;->-$$Nest$sfgetTELEPHONY_PROJECTION()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 447
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    .line 422
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 424
    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 428
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 447
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_3
    :try_start_1
    const-string v0, "KEY"

    .line 432
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "VALUE"

    .line 433
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_0

    .line 443
    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-virtual {p0, v2, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    .line 446
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    .line 447
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_5
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_6
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 415
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method private getBatteryUsageStats()Landroid/os/BatteryUsageStats;
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryStatsManager;

    .line 455
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsManager;

    .line 456
    invoke-virtual {v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 459
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    return-object p0
.end method

.method private getBondedBtDevices(Landroid/content/Context;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string p0, "bluetooth"

    .line 509
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    if-eqz p0, :cond_0

    .line 511
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 513
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getEncodedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 497
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 504
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$addTopBatteryApps$0(Landroid/os/UidBatteryConsumer;Landroid/os/UidBatteryConsumer;)I
    .locals 2

    .line 248
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private processBTDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;[Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 473
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object p1

    move v2, v1

    move v3, v2

    move v4, v3

    .line 477
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 478
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 479
    instance-of v6, v5, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v6, :cond_0

    invoke-interface {v5, p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v0

    .line 482
    :cond_0
    instance-of v6, v5, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v6, :cond_1

    invoke-interface {v5, p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    move v4, v3

    .line 489
    :cond_3
    aget-object p1, p2, v1

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/google/android/settings/support/PsdBundle$Builder;->getEncodedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2c

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    aget-object p1, p2, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    .line 493
    aget-object p1, p2, p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addBatteryAnomalyApps()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 9

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    invoke-virtual {p0}, Lcom/google/android/settings/support/PsdBundle$Builder;->getAnomalyAppList()Ljava/util/List;

    move-result-object v2

    .line 289
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 290
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 291
    iget-object v6, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->anomalyTypes:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 292
    iget-object v8, v5, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 299
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 302
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "noe_battery_anomaly_names"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noe_battery_anomaly_types"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    return-object p0
.end method

.method public addConnectedBluetoothDevicesSignals()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 9

    .line 317
    iget-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->getBondedBtDevices(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/StringBuilder;

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 323
    iget-object v3, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/google/android/settings/support/PsdBundle$Builder;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 324
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 325
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 327
    invoke-direct {p0, v3, v2, v7}, Lcom/google/android/settings/support/PsdBundle$Builder;->processBTDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;[Ljava/lang/StringBuilder;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_3

    .line 331
    aget-object v3, v2, v0

    .line 333
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 334
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget-object v0, v2, v4

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v1, v2, v5

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v2, v6

    .line 340
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "noe_connected_bluetooth_devices"

    .line 342
    invoke-virtual {p0, v3, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    const-string v0, "noe_connected_bluetooth_devices_headset"

    .line 343
    invoke-virtual {p0, v0, v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    const-string v0, "noe_connected_bluetooth_devices_a2dp"

    .line 344
    invoke-virtual {p0, v0, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    return-object p0
.end method

.method public addPairedBluetoothDevices()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->getBondedBtDevices(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 358
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/settings/support/PsdBundle$Builder;->getEncodedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 365
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noe_paired_bluetooth_devices"

    .line 366
    invoke-virtual {p0, v1, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    return-object p0
.end method

.method public addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 6

    .line 211
    iget-object v0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    .line 216
    iget-wide v2, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSize:J

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSizeLimit:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalValues:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-wide p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSize:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mPsdValuesSize:J

    return-object p0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mSignalValues:Ljava/util/List;

    const-string p2, ""

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTelephonyTroubleshooterDiagnosticSignals()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 2

    const-string v0, "noe_telephony_diagnostic_signal_flag"

    const-string v1, ""

    .line 395
    invoke-virtual {p0, v0, v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    const-string v0, "diagnostics"

    .line 396
    invoke-direct {p0, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addTelephonyCursorSignals(Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addTelephonyTroubleshooterStatisticsSignals()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 2

    const-string v0, "noe_telephony_stats_signal_flag"

    const-string v1, ""

    .line 381
    invoke-virtual {p0, v0, v1}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    const-string v0, "call_statistics"

    .line 382
    invoke-direct {p0, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addTelephonyCursorSignals(Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addTopBatteryApps()Lcom/google/android/settings/support/PsdBundle$Builder;
    .locals 15

    .line 237
    invoke-direct {p0}, Lcom/google/android/settings/support/PsdBundle$Builder;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result v7

    .line 239
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v8

    int-to-double v1, v7

    div-double v10, v8, v1

    .line 245
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v0

    .line 247
    new-instance v1, Lcom/google/android/settings/support/PsdBundle$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/settings/support/PsdBundle$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 250
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer;

    .line 254
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v2

    cmpg-double v2, v2, v10

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 255
    invoke-virtual {v2, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v14

    .line 259
    iget-object v2, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 260
    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v3

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v8

    move v6, v7

    .line 259
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDI)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 260
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 265
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 268
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, -0x1

    .line 269
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 272
    :cond_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noe_battery_usage_names"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    .line 273
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noe_battery_usage_percentages"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/settings/support/PsdBundle$Builder;->addSignal(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/settings/support/PsdBundle$Builder;

    return-object p0
.end method

.method public build()Lcom/google/android/settings/support/PsdBundle;
    .locals 2

    .line 201
    new-instance v0, Lcom/google/android/settings/support/PsdBundle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/settings/support/PsdBundle;-><init>(Lcom/google/android/settings/support/PsdBundle$Builder;Lcom/google/android/settings/support/PsdBundle-IA;)V

    return-object v0
.end method

.method getAnomalyAppList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-object v1, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;)V

    .line 402
    iget-object p0, p0, Lcom/google/android/settings/support/PsdBundle$Builder;->mContext:Landroid/content/Context;

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget v0, v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->appRestrictionActiveHour:I

    int-to-long v4, v0

    .line 404
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 402
    invoke-static {p0, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->detectAnomalies(Landroid/content/Context;J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
