.class public Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DashboardFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/DashboardFeatureProvider;


# instance fields
.field private final mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

.field protected final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$5MsjMxWKUWIsC08hZ_YS4S-ddV4(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSwitch$8(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LrWk4zjdXD9NuB4-ecsQ9gRQHjw(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$onCheckedChanged$6(Landroidx/preference/Preference;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MYl6oRVlQym2HFjE_2LK1SngJTI(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSummary$3(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UlAaVlS0SRGY22A3mHvMS_-Ed0I(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshTitle$2(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WVurHktq9I9QTuEglo4qLW7yv2w(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSummary$4(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_wjTpI0VzG8EOcdUM_eq9aNXUUs(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindIcon$11(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$flZ0-hO74MITlDVJyZTqMqEdP84(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Lcom/android/settings/dashboard/DynamicDataObserver;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshSwitch$9(Landroid/net/Uri;Lcom/android/settings/dashboard/DynamicDataObserver;Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gfEuzEM-Kfj3pOyS801A3iSre90(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$refreshTitle$1(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kMzmNzOvOhgxJaD3gCzQRSzGxts(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroidx/preference/Preference;)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindPreferenceToTileAndGetObservers$0(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rJWVbvbyF-wYfJROEDTnaVHOT78(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindSwitchAndGetObserver$5(Landroid/net/Uri;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wRiPo21Zs6DLY1OdivhiwC5zS60(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLandroid/util/Pair;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindIcon$10(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLandroid/util/Pair;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x2xtaTONzAA5JCccP-IAcMGoCEI(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;ZLandroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$onCheckedChanged$7(Landroid/net/Uri;ZLandroidx/preference/Preference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshSummary(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->refreshSummary(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshSwitch(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->refreshSwitch(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshTitle(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->refreshTitle(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {p1}, Lcom/android/settings/dashboard/CategoryManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/CategoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    .line 100
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private bindSummaryAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/DynamicDataObserver;
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.settings.summary_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f04004e

    .line 289
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    const-string v0, "getDynamicSummary"

    .line 291
    invoke-static {p2, v1, v0}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 293
    invoke-direct {p0, v0, p2, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->createDynamicDataObserver(Ljava/lang/String;Landroid/net/Uri;Landroidx/preference/Preference;)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private bindSwitchAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/DynamicDataObserver;
    .locals 3

    .line 310
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->hasSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.settings.switch_uri"

    const-string v1, "onCheckedChanged"

    .line 314
    invoke-static {p2, v0, v1}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 316
    new-instance v2, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "isChecked"

    .line 321
    invoke-static {p2, v0, v1}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchEnabled(Landroidx/preference/Preference;Z)V

    .line 324
    invoke-direct {p0, v1, p2, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->createDynamicDataObserver(Ljava/lang/String;Landroid/net/Uri;Landroidx/preference/Preference;)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object p0

    return-object p0
.end method

.method private bindTitleAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/DynamicDataObserver;
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-object v1

    .line 257
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.android.settings.title_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f04004e

    .line 261
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v0, "getDynamicTitle"

    .line 263
    invoke-static {p2, v2, v0}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 265
    invoke-direct {p0, v0, p2, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->createDynamicDataObserver(Ljava/lang/String;Landroid/net/Uri;Landroidx/preference/Preference;)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private createDynamicDataObserver(Ljava/lang/String;Landroid/net/Uri;Landroidx/preference/Preference;)Lcom/android/settings/dashboard/DynamicDataObserver;
    .locals 1

    .line 228
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$1;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Ljava/lang/String;Landroidx/preference/Preference;)V

    return-object v0
.end method

.method private getResolvableUsers(Landroid/content/Intent;Lcom/android/settingslib/drawer/Tile;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/settingslib/drawer/Tile;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 474
    iget-object p2, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 475
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isIntentResolvable(Landroid/content/Intent;)Z
    .locals 1

    .line 469
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private synthetic lambda$bindIcon$10(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLandroid/util/Pair;Landroid/graphics/drawable/Icon;)V
    .locals 6

    .line 407
    iget-object p4, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setPreferenceIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLjava/lang/String;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method private synthetic lambda$bindIcon$11(Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Z)V
    .locals 11

    .line 389
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 394
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 396
    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const-string v2, "com.android.settings.icon_uri"

    const-string v3, "getProviderIcon"

    .line 397
    invoke-static {p1, v2, v3}, Lcom/android/settingslib/drawer/TileUtils;->getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 399
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2, v1}, Lcom/android/settingslib/drawer/TileUtils;->getIconFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v9

    if-nez v9, :cond_2

    .line 402
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to get icon from uri "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DashboardFeatureImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 405
    :cond_2
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v10

    .line 406
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda2;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p2

    move-object v7, p1

    move v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLandroid/util/Pair;Landroid/graphics/drawable/Icon;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$bindPreferenceToTileAndGetObservers$0(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroidx/preference/Preference;)Z
    .locals 6

    .line 183
    instance-of p7, p1, Lcom/android/settings/homepage/TopLevelSettings;

    if-eqz p7, :cond_0

    iget-object p7, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 184
    invoke-static {p7}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result p7

    if-eqz p7, :cond_0

    .line 186
    check-cast p1, Lcom/android/settings/homepage/TopLevelSettings;

    .line 187
    invoke-virtual {p1, p2}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightPreferenceKey(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Lcom/android/settings/homepage/TopLevelSettings;->getHighlightMixin()Lcom/android/settings/homepage/TopLevelHighlightMixin;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    .line 190
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->launchIntentOrSelectProfile(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILcom/android/settings/homepage/TopLevelHighlightMixin;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$bindSwitchAndGetObserver$5(Landroid/net/Uri;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 317
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->onCheckedChanged(Landroid/net/Uri;Landroidx/preference/Preference;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCheckedChanged$6(Landroidx/preference/Preference;Landroid/os/Bundle;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 335
    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchEnabled(Landroidx/preference/Preference;Z)V

    const-string/jumbo v1, "set_checked_error"

    .line 336
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    xor-int/2addr p3, v0

    .line 341
    invoke-direct {p0, p1, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchChecked(Landroidx/preference/Preference;Z)V

    const-string/jumbo p1, "set_checked_error_message"

    .line 342
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 344
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCheckedChanged$7(Landroid/net/Uri;ZLandroidx/preference/Preference;)V
    .locals 3

    .line 330
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 331
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v2, "checked_state"

    invoke-static {v1, p1, v0, v2, p2}, Lcom/android/settingslib/drawer/TileUtils;->putBooleanToUriAndGetResult(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 334
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Landroid/os/Bundle;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$refreshSummary$3(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshSummary$4(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 2

    .line 300
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 301
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings.summary"

    invoke-static {p0, p1, v0, v1}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 303
    invoke-virtual {p2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 304
    new-instance p1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda9;-><init>(Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/android/settings/dashboard/DynamicDataObserver;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$refreshSwitch$8(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchChecked(Landroidx/preference/Preference;Z)V

    const/4 p2, 0x1

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchEnabled(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method private synthetic lambda$refreshSwitch$9(Landroid/net/Uri;Lcom/android/settings/dashboard/DynamicDataObserver;Landroidx/preference/Preference;)V
    .locals 3

    .line 352
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 353
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v2, "checked_state"

    invoke-static {v1, p1, v0, v2}, Lcom/android/settingslib/drawer/TileUtils;->getBooleanFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    .line 355
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroidx/preference/Preference;Z)V

    invoke-virtual {p2, v0}, Lcom/android/settings/dashboard/DynamicDataObserver;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$refreshTitle$1(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshTitle$2(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 2

    .line 272
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 273
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings.title"

    invoke-static {p0, p1, v0, v1}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 276
    new-instance p1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda11;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda11;-><init>(Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/android/settings/dashboard/DynamicDataObserver;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private launchIntentOrSelectProfile(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILcom/android/settings/homepage/TopLevelHighlightMixin;)V
    .locals 6

    .line 437
    invoke-direct {p0, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->isIntentResolvable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot resolve intent, skipping. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DashboardFeatureImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->updateUserHandlesIfNeeded(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V

    .line 442
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {v0, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(Landroid/content/Intent;I)Z

    .line 444
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->isPrimaryProfileOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 447
    iget-object p0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    invoke-virtual {p1, p3, p0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_2
    const-string v0, "android.intent.extra.USER"

    .line 449
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    if-eqz v0, :cond_3

    .line 450
    iget-object v3, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 451
    invoke-virtual {p1, p3, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 455
    :cond_3
    invoke-direct {p0, p3, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getResolvableUsers(Landroid/content/Intent;Lcom/android/settingslib/drawer/Tile;)Ljava/util/List;

    move-result-object p0

    .line 456
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 457
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    invoke-virtual {p1, p3, p0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 461
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object v4, p5

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/dashboard/profileselector/ProfileSelectDialog;->show(Landroidx/fragment/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;ILandroid/content/DialogInterface$OnShowListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 445
    :cond_5
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private onCheckedChanged(Landroid/net/Uri;Landroidx/preference/Preference;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 328
    invoke-direct {p0, p2, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setSwitchEnabled(Landroidx/preference/Preference;Z)V

    .line 329
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;ZLandroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private refreshSummary(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 1

    .line 299
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private refreshSwitch(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 1

    .line 351
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Lcom/android/settings/dashboard/DynamicDataObserver;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private refreshTitle(Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 1

    .line 271
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/net/Uri;Landroidx/preference/Preference;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private setPreferenceIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLjava/lang/String;Landroid/graphics/drawable/Icon;)V
    .locals 2

    .line 424
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 425
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.category.ia.homepage"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->getHomepageIconColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p5, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 427
    iget-object p3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 428
    new-instance p3, Lcom/android/settingslib/widget/AdaptiveIcon;

    iget-object p4, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f0b012b

    invoke-direct {p3, p4, p5, v0}, Lcom/android/settingslib/widget/AdaptiveIcon;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    .line 430
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p0, p2}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V

    move-object p5, p3

    .line 432
    :cond_1
    :goto_0
    invoke-virtual {p1, p5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setSwitchChecked(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 363
    instance-of p0, p1, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz p0, :cond_0

    .line 364
    check-cast p1, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 365
    :cond_0
    instance-of p0, p1, Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_1

    .line 366
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSwitchEnabled(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 371
    instance-of p0, p1, Lcom/android/settingslib/PrimarySwitchPreference;

    if-eqz p0, :cond_0

    .line 372
    check-cast p1, Lcom/android/settingslib/PrimarySwitchPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method bindIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Z)V
    .locals 7

    .line 381
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.settings.icon_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const v1, 0x106000d

    .line 386
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 385
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setPreferenceIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 388
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroidx/preference/Preference;Z)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 415
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/drawer/Tile;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    .line 419
    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->setPreferenceIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;ZLjava/lang/String;Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public bindPreferenceToTileAndGetObservers(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/dashboard/DashboardFragment;ZLandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lcom/android/settings/dashboard/DashboardFragment;",
            "Z",
            "Landroidx/preference/Preference;",
            "Lcom/android/settingslib/drawer/Tile;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DynamicDataObserver;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p7

    const/4 v11, 0x0

    if-nez v8, :cond_0

    return-object v11

    .line 135
    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v3, p6

    .line 136
    invoke-virtual {v8, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v3, p6

    .line 138
    invoke-virtual {p0, v9}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 140
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-direct {p0, v8, v9}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindTitleAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 143
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    invoke-direct {p0, v8, v9}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindSummaryAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 147
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_3
    invoke-direct {p0, v8, v9}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindSwitchAndGetObserver(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settings/dashboard/DynamicDataObserver;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 151
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move/from16 v0, p3

    .line 153
    invoke-virtual {p0, v8, v9, v0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindIcon(Landroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Z)V

    .line 155
    instance-of v0, v9, Lcom/android/settingslib/drawer/ActivityTile;

    if-eqz v0, :cond_9

    .line 156
    invoke-interface/range {p2 .. p2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v7

    .line 157
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "com.android.settings.FRAGMENT_CLASS"

    .line 161
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.settings.intent.action"

    .line 162
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v11

    move-object v2, v0

    .line 164
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 165
    invoke-virtual {v8, v2}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_2

    .line 167
    :cond_6
    new-instance v6, Landroid/content/Intent;

    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, ":settings:source_metrics"

    .line 168
    invoke-virtual {v6, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v0, :cond_7

    .line 171
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    move-object/from16 v2, p2

    .line 174
    instance-of v4, v2, Lcom/android/settings/homepage/TopLevelSettings;

    if-eqz v4, :cond_8

    .line 175
    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/ComponentName;

    .line 177
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 175
    invoke-static {v4, v5, v0, v13}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 181
    :cond_8
    new-instance v13, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda1;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    invoke-virtual {v8, v13}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    :cond_9
    :goto_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->hasOrder()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getOrder()I

    move-result v1

    .line 201
    invoke-virtual/range {p5 .. p5}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const v0, 0x7fffffff

    if-ne v10, v0, :cond_a

    goto :goto_3

    :cond_a
    add-int/2addr v1, v10

    .line 205
    invoke-virtual {v8, v1}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_4

    .line 203
    :cond_b
    :goto_3
    invoke-virtual {v8, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 208
    :cond_c
    :goto_4
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    move-object v11, v12

    :goto_5
    return-object v11
.end method

.method public getAllCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/dashboard/CategoryManager;->getCategories(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 122
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "dashboard_tile_pref_"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settings/dashboard/CategoryManager;

    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/CategoryManager;->getTilesByCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object p0

    return-object p0
.end method
