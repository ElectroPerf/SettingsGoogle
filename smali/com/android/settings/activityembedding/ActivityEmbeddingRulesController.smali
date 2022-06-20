.class public Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;
.super Ljava/lang/Object;
.source "ActivityEmbeddingRulesController.java"


# static fields
.field private static final COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSplitController:Landroidx/window/embedding/SplitController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "*"

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mSplitController:Landroidx/window/embedding/SplitController;

    return-void
.end method

.method private static addActivityFilter(Ljava/util/Set;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/ActivityFilter;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 236
    new-instance v0, Landroidx/window/embedding/ActivityFilter;

    sget-object v1, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addActivityFilter(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/ActivityFilter;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 241
    new-instance v0, Landroidx/window/embedding/ActivityFilter;

    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private registerAlwaysExpandRule()V
    .locals 4

    .line 221
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "settings_search_always_expand"

    invoke-static {v1, v2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    const/16 v3, 0x5de

    .line 225
    invoke-interface {v1, v2, v3}, Lcom/android/settings/search/SearchFeatureProvider;->buildSearchIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 226
    invoke-static {v0, v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Set;Landroid/content/Intent;)V

    .line 228
    :cond_0
    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Set;Ljava/lang/Class;)V

    .line 229
    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroductionInternal;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Set;Ljava/lang/Class;)V

    .line 230
    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Set;Ljava/lang/Class;)V

    .line 231
    const-class v1, Lcom/android/settingslib/users/AvatarPickerActivity;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Set;Ljava/lang/Class;)V

    .line 232
    iget-object p0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mSplitController:Landroidx/window/embedding/SplitController;

    new-instance v1, Landroidx/window/embedding/ActivityRule;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroidx/window/embedding/ActivityRule;-><init>(Ljava/util/Set;Z)V

    invoke-virtual {p0, v1}, Landroidx/window/embedding/SplitController;->registerRule(Landroidx/window/embedding/EmbeddingRule;)V

    return-void
.end method

.method private registerHomepagePlaceholderRule()V
    .locals 10

    .line 201
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 202
    const-class v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Set;Ljava/lang/Class;)V

    .line 203
    const-class v0, Lcom/android/settings/Settings;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->addActivityFilter(Ljava/util/Set;Ljava/lang/Class;)V

    .line 205
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/Settings$NetworkDashboardActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, ":settings:is_second_layer_page"

    const/4 v3, 0x1

    .line 206
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    new-instance v9, Landroidx/window/embedding/SplitPlaceholderRule;

    iget-object v0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    .line 212
    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->getMinCurrentScreenSplitWidthPx(Landroid/content/Context;)I

    move-result v5

    iget-object v0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    .line 213
    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->getMinSmallestScreenSplitWidthPx(Landroid/content/Context;)I

    move-result v6

    iget-object v0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    .line 214
    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->getSplitRatio(Landroid/content/Context;)F

    move-result v7

    const/4 v4, 0x2

    const/4 v8, 0x3

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroidx/window/embedding/SplitPlaceholderRule;-><init>(Ljava/util/Set;Landroid/content/Intent;ZIIIFI)V

    .line 217
    iget-object p0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mSplitController:Landroidx/window/embedding/SplitController;

    invoke-virtual {p0, v9}, Landroidx/window/embedding/SplitController;->registerRule(Landroidx/window/embedding/EmbeddingRule;)V

    return-void
.end method

.method public static registerSubSettingsPairRule(Landroid/content/Context;Z)V
    .locals 2

    .line 182
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 192
    sget-object v0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->COMPONENT_NAME_WILDCARD:Landroid/content/ComponentName;

    const-string v1, "android.intent.action.SAFETY_CENTER"

    invoke-static {p0, v0, v1, p1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    return-void
.end method

.method public static registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V
    .locals 11

    .line 91
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 95
    new-instance v0, Landroidx/window/embedding/SplitPairFilter;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct {v0, p1, p2, p3}, Landroidx/window/embedding/SplitPairFilter;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v0

    new-instance v10, Landroidx/window/embedding/SplitPairRule;

    .line 102
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->getMinCurrentScreenSplitWidthPx(Landroid/content/Context;)I

    move-result v6

    .line 103
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->getMinSmallestScreenSplitWidthPx(Landroid/content/Context;)I

    move-result v7

    .line 104
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->getSplitRatio(Landroid/content/Context;)F

    move-result v8

    const/4 v9, 0x3

    move-object v1, v10

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v1 .. v9}, Landroidx/window/embedding/SplitPairRule;-><init>(Ljava/util/Set;IIZIIFI)V

    .line 98
    invoke-virtual {v0, v10}, Landroidx/window/embedding/SplitController;->registerRule(Landroidx/window/embedding/EmbeddingRule;)V

    return-void
.end method

.method public static registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 7

    .line 167
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    .line 171
    invoke-static/range {v1 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public static registerTwoPanePairRuleForSettingsHome(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;ZZZ)V
    .locals 9

    .line 117
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/Settings;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz p3, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v8

    :goto_0
    if-eqz p4, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v8

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    .line 130
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_3

    move v4, v7

    goto :goto_2

    :cond_3
    move v4, v8

    :goto_2
    if-eqz p4, :cond_4

    move v5, v7

    goto :goto_3

    :cond_4
    move v5, v8

    :goto_3
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    .line 141
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/homepage/DeepLinkHomepageActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    .line 150
    new-instance v1, Landroid/content/ComponentName;

    const-class v0, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;IIZ)V

    return-void
.end method


# virtual methods
.method public initRules()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ActivityEmbeddingCtrl"

    const-string v0, "Not support this feature now"

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->mSplitController:Landroidx/window/embedding/SplitController;

    invoke-virtual {v0}, Landroidx/window/embedding/SplitController;->clearRegisteredRules()V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerHomepagePlaceholderRule()V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerAlwaysExpandRule()V

    return-void
.end method
