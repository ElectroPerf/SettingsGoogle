.class public Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "CollapsingCoordinatorLayout.java"


# instance fields
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mIsMatchParentHeight:Z

.field private mToolbarTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 67
    iput-boolean p3, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mIsMatchParentHeight:Z

    if-eqz p2, :cond_0

    .line 69
    sget-object v0, Lcom/android/settingslib/collapsingtoolbar/R$styleable;->CollapsingCoordinatorLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    sget p2, Lcom/android/settingslib/collapsingtoolbar/R$styleable;->CollapsingCoordinatorLayout_collapsing_toolbar_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mToolbarTitle:Ljava/lang/CharSequence;

    .line 73
    sget p2, Lcom/android/settingslib/collapsingtoolbar/R$styleable;->CollapsingCoordinatorLayout_content_frame_height_match_parent:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mIsMatchParentHeight:Z

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->init()V

    return-void
.end method

.method private disableCollapsingToolbarLayoutScrollingBehavior()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 240
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {v1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    .line 241
    new-instance v2, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout$1;

    invoke-direct {v2, p0}, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout$1;-><init>(Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    .line 248
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settingslib/collapsingtoolbar/R$layout;->collapsing_toolbar_content_layout:I

    invoke-static {v0, v1, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$id;->collapsing_toolbar:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 106
    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$id;->app_bar:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    const v1, 0x3f8ccccd    # 1.1f

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setLineSpacingMultiplier(F)V

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mToolbarTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v1, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mToolbarTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->disableCollapsingToolbarLayoutScrollingBehavior()V

    return-void
.end method

.method private isContentFrameChild(I)Z
    .locals 0

    .line 97
    sget p0, Lcom/android/settingslib/collapsingtoolbar/R$id;->app_bar:I

    if-eq p1, p0, :cond_1

    sget p0, Lcom/android/settingslib/collapsingtoolbar/R$id;->content_frame:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settingslib/collapsingtoolbar/R$id;->content_frame:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mIsMatchParentHeight:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 85
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->isContentFrameChild(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method

.method public getCollapsingToolbarLayout()Lcom/google/android/material/appbar/CollapsingToolbarLayout;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    return-object p0
.end method

.method public getContentFrameLayout()Landroid/view/View;
    .locals 1

    .line 225
    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSupportToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 230
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/widget/CollapsingCoordinatorLayout;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    sget v0, Lcom/android/settingslib/collapsingtoolbar/R$id;->support_action_bar:I

    .line 231
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method
