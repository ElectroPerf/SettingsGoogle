.class public Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ContextualSuggestionFragment.java"

# interfaces
.implements Lcom/android/settings/homepage/SplitLayoutListener;
.implements Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;


# static fields
.field static final SUGGESTIONS:Ljava/lang/String; = "suggestions"

.field static final SUW_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field static final TIPS_PACKAGE:Ljava/lang/String; = "com.google.android.apps.tips"


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mIconVisible:Z

.field private mSplitLayoutSupported:Z

.field private mStartTime:J

.field mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

.field private mSuggestionTile:Landroid/view/View;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsRestored:Z

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$WlKOr2mZicOwhxlhByT2XVGXtIA(Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->lambda$updateState$2(Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mcVPCHGkZnm8qSd3F_KzOAg8Ys4(Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->lambda$loadSuggestions$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$qgCu46CLOQvZEcmr7ijHXjge6Cg(Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->lambda$loadSuggestions$0(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mIconVisible:Z

    return-void
.end method

.method private synthetic lambda$loadSuggestions$0(Ljava/util/List;)V
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->updateState(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$loadSuggestions$1()V
    .locals 5

    const-string v0, "ContextualSuggestFrag"

    const-string v1, "Start loading suggestions"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v1, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-virtual {v1}, Lcom/android/settingslib/suggestions/SuggestionController;->getSuggestions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "null"

    goto :goto_0

    .line 159
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded suggests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;Ljava/util/List;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$updateState$2(Landroid/service/settings/suggestions/Suggestion;Landroid/view/View;)V
    .locals 1

    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/service/settings/suggestions/Suggestion;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to start suggestion "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextualSuggestFrag"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5de

    return p0
.end method

.method getSuggestionSummary(Ljava/lang/String;)I
    .locals 0

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p0, "com.google.android.setupwizard"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.google.android.apps.tips"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f0414ed

    return p0

    :cond_1
    const p0, 0x7f0412b9

    return p0
.end method

.method getSuggestionTitle(Ljava/lang/String;)I
    .locals 0

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p0, "com.google.android.setupwizard"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.google.android.apps.tips"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f0414ee

    return p0

    :cond_1
    const p0, 0x7f0412ba

    return p0
.end method

.method loadSuggestions()V
    .locals 4

    .line 141
    iget-boolean v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionsRestored:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 143
    iput-boolean v1, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionsRestored:Z

    return-void

    .line 147
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mStartTime:J

    .line 148
    iget-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-nez v0, :cond_1

    const-string v0, "ContextualSuggestFrag"

    const-string v2, "Cannot get SuggestionController"

    .line 149
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0, v1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->showSuggestionTile(Z)V

    return-void

    .line 154
    :cond_1
    new-instance v0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 62
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSuggestionServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/settingslib/suggestions/SuggestionController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;)V

    iput-object v1, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 71
    iget-boolean v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSplitLayoutSupported:Z

    if-nez v0, :cond_0

    const v0, 0x7f0600a7

    goto :goto_0

    :cond_0
    const v0, 0x7f0600a8

    :goto_0
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionTile:Landroid/view/View;

    const v2, 0x1020006

    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mIcon:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionTile:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mTitle:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionTile:Landroid/view/View;

    const v2, 0x1020010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSummary:Landroid/widget/TextView;

    .line 78
    iget-boolean v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mIconVisible:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->onSplitLayoutChanged(Z)V

    :cond_1
    if-eqz p3, :cond_2

    .line 84
    iput-boolean v1, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionsRestored:Z

    .line 85
    const-class v0, Ljava/util/List;

    const-string v1, "suggestions"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->updateState(Ljava/util/List;)V

    .line 87
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestions:Ljava/util/List;

    const-string v1, "suggestions"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->loadSuggestions()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onSplitLayoutChanged(Z)V
    .locals 1

    .line 114
    iput-boolean p1, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mIconVisible:Z

    .line 115
    iget-boolean v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSplitLayoutSupported:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mIcon:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 116
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStart()V

    .line 99
    iget-object p0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/SuggestionController;->stop()V

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onStop()V

    return-void
.end method

.method public setSplitLayoutSupported(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSplitLayoutSupported:Z

    return-void
.end method

.method showSuggestionTile(Z)V
    .locals 4

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mStartTime:J

    sub-long/2addr v0, v2

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total loading time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextualSuggestFrag"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/android/settings/core/InstrumentedFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    long-to-int v0, v0

    const/16 v1, 0x67e

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 229
    instance-of v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-eqz v0, :cond_0

    .line 230
    check-cast p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showHomepageWithSuggestion(Z)V

    :cond_0
    return-void
.end method

.method updateState(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestions:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 169
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/settings/suggestions/Suggestion;

    .line 176
    iget-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/service/settings/suggestions/Suggestion;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {p0, v0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->getSuggestionTitle(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSummary:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 185
    invoke-virtual {p0, v0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->getSuggestionSummary(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->mSuggestionTile:Landroid/view/View;

    new-instance v1, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment$$ExternalSyntheticLambda0;-><init>(Landroid/service/settings/suggestions/Suggestion;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->showSuggestionTile(Z)V

    return-void

    :cond_4
    :goto_0
    const-string p1, "ContextualSuggestFrag"

    const-string v1, "Remove suggestion"

    .line 170
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0, v0}, Lcom/google/android/settings/dashboard/suggestions/ContextualSuggestionFragment;->showSuggestionTile(Z)V

    return-void
.end method
