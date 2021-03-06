.class public final Lcom/android/settings/fuelgauge/BatteryBackupHelper;
.super Ljava/lang/Object;
.source "BatteryBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z


# instance fields
.field mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

.field private final mContext:Landroid/content/Context;

.field mIDeviceIdleController:Landroid/os/IDeviceIdleController;

.field mIPackageManager:Landroid/content/pm/IPackageManager;

.field mPowerAllowlistBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

.field mTestApplicationInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mTestApplicationInfoList:Ljava/util/List;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private backupFullPowerList(Landroid/app/backup/BackupDataOutput;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataOutput;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BatteryBackupHelper"

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 134
    array-length v3, p0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, ","

    .line 139
    invoke-static {v3, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "full_power_list"

    .line 140
    invoke-static {p1, v4, v3}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->writeBackupData(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 141
    array-length v4, p0

    .line 142
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "backup getFullPowerList() size=%d in %d/ms"

    .line 141
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "no data found in the getFullPowerList()"

    .line 135
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "backupFullPowerList() failed"

    .line 130
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0

    .line 305
    sget-boolean p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "BatteryBackupHelper"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getIDeviceIdleController()Landroid/os/IDeviceIdleController;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceidle"

    .line 246
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    return-object v0
.end method

.method private getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 254
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method private getInstalledApplications()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mTestApplicationInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 278
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 283
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/32 v4, 0x408200

    goto :goto_1

    :cond_2
    const-wide/32 v4, 0x8200

    :goto_1
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 282
    invoke-interface {v3, v4, v5, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 286
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BatteryBackupHelper"

    const-string v1, "getInstalledApplications() is failed"

    .line 289
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    .line 294
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_2
    if-ltz p0, :cond_5

    .line 295
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 296
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_4

    .line 298
    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method private getPowerAllowlistBackend()Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mPowerAllowlistBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    if-eqz v0, :cond_0

    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mPowerAllowlistBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    return-object v0
.end method

.method private static isOwner()Z
    .locals 1

    .line 320
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSystemOrDefaultApp(Ljava/lang/String;)Z
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->getPowerAllowlistBackend()Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object p0

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isSysAllowlisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isDefaultActiveApp(Ljava/lang/String;)Z

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

.method private restoreOptimizationMode(Ljava/lang/String;I)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 235
    :cond_1
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 236
    :goto_0
    invoke-virtual {v1, p2}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageState(I)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    .line 237
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    const-string/jumbo p1, "restore:%s mode=%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryBackupHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static writeBackupData(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 310
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 312
    :try_start_0
    array-length v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 313
    array-length v0, p2

    invoke-virtual {p0, p2, v0}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 315
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "writeBackupData() is failed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryBackupHelper"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method backupOptimizationMode(Landroid/app/backup/BackupDataOutput;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataOutput;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 149
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->getInstalledApplications()Ljava/util/List;

    move-result-object v3

    const-string v4, "BatteryBackupHelper"

    if-eqz v3, :cond_4

    .line 150
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 155
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/AppOpsManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    .line 158
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x3

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    const/16 v12, 0x46

    .line 159
    iget v13, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v14, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12, v13, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v12

    .line 162
    iget-object v13, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v14, p2

    .line 163
    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 162
    invoke-static {v12, v13}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(IZ)I

    move-result v12

    if-eq v12, v11, :cond_1

    if-eqz v12, :cond_1

    .line 165
    iget-object v11, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 167
    invoke-direct {p0, v11}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->isSystemOrDefaultApp(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_0

    .line 170
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 172
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {p0, v10}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->debugLog(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "optimization_mode_list"

    move-object/from16 v6, p1

    invoke-static {v6, v5, v0}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->writeBackupData(Landroid/app/backup/BackupDataOutput;Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v11, [Ljava/lang/Object;

    .line 179
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    const/4 v3, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "backup getInstalledApplications():%d count=%d in %d/ms"

    .line 178
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_1
    const-string v0, "no data found in the getInstalledApplications()"

    .line 151
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 91
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->isOwner()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->backupFullPowerList(Landroid/app/backup/BackupDataOutput;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->backupOptimizationMode(Landroid/app/backup/BackupDataOutput;Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "BatteryBackupHelper"

    const-string p1, "ignore performBackup() for non-owner or empty data"

    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 4

    .line 103
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->isOwner()Z

    move-result v0

    const-string v1, "BatteryBackupHelper"

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "optimization_mode_list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v0

    .line 109
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/backup/BackupDataInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->restoreOptimizationMode([B)V

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "failed to load BackupDataInputStream"

    .line 113
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "ignore restoreEntity() for non-owner or empty data"

    .line 104
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method restoreOptimizationMode([B)V
    .locals 10

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 185
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 186
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-string v3, "BatteryBackupHelper"

    if-eqz p1, :cond_0

    const-string p0, "no data found in the restoreOptimizationMode()"

    .line 187
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, ","

    .line 190
    invoke-virtual {v2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 191
    array-length v2, p1

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    .line 196
    :goto_0
    array-length v6, p1

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v6, :cond_5

    .line 197
    aget-object v6, p1, v4

    const-string v9, ":"

    .line 198
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 200
    array-length v9, v6

    if-eq v9, v7, :cond_2

    goto :goto_1

    .line 204
    :cond_2
    aget-object v7, v6, v2

    .line 206
    invoke-direct {p0, v7}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->isSystemOrDefaultApp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignore from isSystemOrDefaultApp():"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 213
    :cond_3
    :try_start_0
    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    invoke-direct {p0, v7, v6}, Lcom/android/settings/fuelgauge/BatteryBackupHelper;->restoreOptimizationMode(Ljava/lang/String;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to parse the optimization mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 201
    :cond_4
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid raw data found:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-array p0, v7, [Ljava/lang/Object;

    .line 223
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v8

    const-string/jumbo p1, "restoreOptimizationMode() count=%d in %d/ms"

    .line 222
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_3
    const-string p0, "no data found from the split() processing"

    .line 192
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method
