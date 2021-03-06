.class public Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;
.super Ljava/lang/Object;
.source "CollapsingToolbarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;
    }
.end annotation


# instance fields
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mContentFrameLayout:Landroid/widget/FrameLayout;

.field private mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private final mHostCallback:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;

.field private mToolbar:Landroid/widget/Toolbar;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mHostCallback:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;

    return-void
.end method

.method private disableCollapsingToolbarLayoutScrollingBehavior()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 143
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    .line 144
    new-instance v2, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$1;-><init>(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    .line 151
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    return-void
.end method


# virtual methods
.method public getContentFrameLayout()Landroid/widget/FrameLayout;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mContentFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 76
    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$layout;->collapsing_toolbar_base_layout:I

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    instance-of p2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p2, :cond_0

    .line 79
    move-object p2, p1

    check-cast p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 81
    :cond_0
    sget p2, Lcom/android/settingslib/collapsingtoolbar/R$id;->collapsing_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 82
    sget p2, Lcom/android/settingslib/collapsingtoolbar/R$id;->app_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 83
    iget-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz p2, :cond_1

    const v0, 0x3f8ccccd    # 1.1f

    .line 84
    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setLineSpacingMultiplier(F)V

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->disableCollapsingToolbarLayoutScrollingBehavior()V

    .line 87
    sget p2, Lcom/android/settingslib/collapsingtoolbar/R$id;->action_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Toolbar;

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mToolbar:Landroid/widget/Toolbar;

    .line 88
    sget p2, Lcom/android/settingslib/collapsingtoolbar/R$id;->content_frame:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mContentFrameLayout:Landroid/widget/FrameLayout;

    .line 89
    iget-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mHostCallback:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;

    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mToolbar:Landroid/widget/Toolbar;

    invoke-interface {p2, p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;->setActionBar(Landroid/widget/Toolbar;)Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    .line 93
    invoke-virtual {p0, p2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    invoke-virtual {p0, p2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 95
    invoke-virtual {p0, p2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_2
    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->mHostCallback:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;

    invoke-interface {p0, p1}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;->setOuterTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
