.class public Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# instance fields
.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mForBiometrics:Z

.field protected mForFace:Z

.field protected mForFingerprint:Z

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mIsManagedProfile:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNextButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mRequestGatekeeperPassword:Z

.field private mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

.field protected mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field protected mUserId:I


# direct methods
.method public static synthetic $r8$lambda$Y2UfSUj4Mmc_ceoBi0oEjsTC3ts(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->lambda$updateActivityTitle$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l2LTyG_s2j-mJmQrcHqehCeajRc(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->lambda$onCreateView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultHeaderColorList(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextButton(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 192
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    const/4 v1, 0x0

    .line 222
    invoke-static {v1, v1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 223
    invoke-static {v1, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    .line 224
    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 225
    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 221
    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 259
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 425
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 427
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static synthetic lambda$onCreateView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateActivityTitle$0()Ljava/lang/String;
    .locals 1

    const v0, 0x7f040c7e

    .line 487
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private postClearPatternRunnable()V
    .locals 3

    .line 830
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 831
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startSaveAndFinish()V
    .locals 10

    .line 835
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const-string p0, "ChooseLockPattern"

    const-string/jumbo v0, "startSaveAndFinish with an existing SaveAndFinishWorker."

    .line 836
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 840
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 842
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-direct {v0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    .line 843
    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 845
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    const-string/jumbo v2, "save_and_finish_worker"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 846
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 847
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 849
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "extra_require_password"

    .line 850
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v1, "unification_profile_id"

    .line 852
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "unification_profile_credential"

    .line 854
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockscreenCredential;

    .line 855
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    const/16 v4, -0x2710

    .line 856
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 855
    invoke-virtual {v3, v0, v2}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 859
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_1

    .line 853
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0

    .line 861
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mRequestGatekeeperPassword:Z

    iget-object v7, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v8, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget v9, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZLcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V

    return-void
.end method

.method private updateActivityTitle()V
    .locals 3

    .line 480
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040c77

    .line 481
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFace:Z

    if-eqz v0, :cond_1

    const v0, 0x7f040c76

    .line 483
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 484
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsManagedProfile:Z

    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    const-string v2, "Settings.SET_WORK_PROFILE_PATTERN_HEADER"

    .line 486
    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f040c74

    .line 490
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d

    return p0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 635
    iget p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-static {p1, p0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public handleLeftButton()V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    const/4 v0, 0x0

    .line 642
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 645
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    return-void

    .line 647
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t make sense"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleRightButton()V
    .locals 5

    .line 653
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v3, " when button is "

    const-string v4, "expected ui stage "

    if-ne v1, v2, :cond_1

    .line 654
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 659
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0

    .line 655
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 660
    :cond_1
    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v1, v2, :cond_3

    .line 661
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_2

    .line 665
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->startSaveAndFinish()V

    goto :goto_0

    .line 662
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 666
    :cond_3
    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v1, v2, :cond_5

    .line 667
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_4

    .line 671
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 672
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 673
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 668
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 231
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string p1, "password"

    .line 238
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 242
    :goto_0
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :goto_1
    return-void
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 2

    .line 867
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 869
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p2, :cond_0

    .line 870
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 872
    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p2, :cond_1

    .line 873
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_1
    if-nez p1, :cond_2

    .line 877
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 879
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 882
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 447
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 448
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/password/ChooseLockPattern;

    if-eqz p1, :cond_1

    .line 451
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 453
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 454
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsManagedProfile:Z

    .line 456
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "for_cred_req_boot"

    const/4 v1, 0x0

    .line 458
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    new-instance v2, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-direct {v2}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    .line 461
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_require_password"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "password"

    .line 463
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/internal/widget/LockscreenCredential;

    .line 465
    invoke-virtual {v2, v4}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setBlocking(Z)V

    .line 466
    invoke-virtual {v2, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 467
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    iget v8, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    move v4, v0

    move-object v6, v7

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZLcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V

    :cond_0
    const-string v0, "for_fingerprint"

    .line 470
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    const-string v0, "for_face"

    .line 472
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFace:Z

    const-string v0, "for_biometrics"

    .line 474
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForBiometrics:Z

    return-void

    .line 449
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Fragment contained in wrong activity"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const p3, 0x7f060085

    const/4 v0, 0x0

    .line 499
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    const p2, 0x7f0d0366

    .line 501
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 507
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateActivityTitle()V

    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 509
    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 510
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f09001a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0d05b9

    .line 511
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 513
    const-class p2, Lcom/google/android/setupdesign/template/IconMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupdesign/template/IconMixin;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/google/android/setupdesign/template/IconMixin;->setVisibility(I)V

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const p3, 0x7f02025a

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 519
    :cond_1
    :goto_0
    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 520
    new-instance p3, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 521
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040ccf

    .line 522
    invoke-virtual {p3, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    new-instance v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 523
    invoke-virtual {p3, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    .line 524
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    const v0, 0x7f130281

    .line 525
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    .line 526
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    .line 520
    invoke-virtual {p2, p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 528
    new-instance p3, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 529
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040cd0

    .line 530
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 531
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    const/4 v0, 0x5

    .line 532
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    const v0, 0x7f130280

    .line 533
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    .line 534
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    .line 528
    invoke-virtual {p2, p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 536
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 537
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 623
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    .line 624
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 629
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 630
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 631
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 615
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    .line 616
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 617
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 604
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 605
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 607
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 609
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 700
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 702
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string/jumbo v1, "uiStage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 703
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    const-string v1, "chosenPattern"

    .line 704
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 707
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p0, :cond_1

    .line 708
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    const-string v0, "currentPattern"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method protected onSkipOrClearButtonClick(Landroid/view/View;)V
    .locals 0

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->handleLeftButton()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 544
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0d02a7

    .line 545
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 546
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    const v0, 0x7f0d0366

    .line 547
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 548
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    const v0, 0x7f0d025d

    .line 551
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const v0, 0x7f0d061f

    .line 556
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 558
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 560
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "confirm_credentials"

    const/4 v2, 0x1

    .line 561
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 562
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "password"

    .line 564
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    const-string/jumbo v3, "request_gk_pw_handle"

    .line 565
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mRequestGatekeeperPassword:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 572
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 574
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 575
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 p2, 0x37

    .line 576
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    const p2, 0x7f041565

    .line 577
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 578
    invoke-virtual {p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mRequestGatekeeperPassword:Z

    .line 579
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 580
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 581
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    if-nez p1, :cond_2

    .line 584
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 587
    :cond_0
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    :cond_1
    const-string p1, "chosenPattern"

    .line 591
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    const-string p1, "currentPattern"

    .line 592
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 594
    invoke-static {}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object p1

    const-string/jumbo v0, "uiStage"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 597
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string/jumbo p2, "save_and_finish_worker"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    :cond_2
    :goto_0
    return-void
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mNextButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    return-void
.end method

.method protected updateFooterLeftButton(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 3

    .line 818
    iget-object v0, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_0

    .line 819
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_0

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v2, v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 823
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object p1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean p1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 10

    .line 719
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 721
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 725
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 726
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 727
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v8, 0x4

    .line 729
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 727
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 726
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 731
    :cond_0
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v5, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 733
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0d0533

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/setupdesign/GlifLayout;

    .line 734
    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFace:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForBiometrics:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v3

    :goto_2
    const/4 v6, -0x1

    const-string v7, ""

    if-eqz v5, :cond_4

    .line 736
    iget v8, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->messageForBiometrics:I

    if-ne v8, v6, :cond_3

    .line 737
    invoke-virtual {v4, v7}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 739
    :cond_3
    invoke-virtual {v4, v8}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    goto :goto_3

    .line 742
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    :goto_3
    iget v8, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    if-ne v8, v6, :cond_5

    .line 745
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 747
    :cond_5
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 750
    :goto_4
    sget-object v6, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq p1, v6, :cond_8

    if-ne p1, v1, :cond_6

    goto :goto_5

    .line 757
    :cond_6
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    .line 758
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 761
    :cond_7
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v1, :cond_9

    if-eqz v5, :cond_9

    .line 762
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f040c98

    .line 763
    invoke-virtual {v4, v1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    goto :goto_6

    .line 751
    :cond_8
    :goto_5
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 752
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f0500ed

    .line 753
    invoke-virtual {v4, v5, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 754
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 767
    :cond_9
    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateFooterLeftButton(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 769
    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v1, v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonText(I)V

    .line 770
    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 773
    iget-boolean v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v1, :cond_a

    .line 774
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_7

    .line 776
    :cond_a
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    .line 781
    :goto_7
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 784
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$1;->$SwitchMap$com$android$settings$password$ChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v3, :cond_f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_e

    const/4 v4, 0x3

    if-eq v1, v4, :cond_d

    const/4 v4, 0x5

    if-eq v1, v4, :cond_c

    const/4 v4, 0x6

    if-eq v1, v4, :cond_b

    goto :goto_9

    .line 802
    :cond_b
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 803
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_8

    .line 799
    :cond_c
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_9

    .line 792
    :cond_d
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 793
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    :goto_8
    move v2, v3

    goto :goto_9

    .line 789
    :cond_e
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_9

    .line 786
    :cond_f
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :goto_9
    if-ne v0, p1, :cond_10

    if-eqz v2, :cond_11

    .line 813
    :cond_10
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_11
    return-void
.end method
