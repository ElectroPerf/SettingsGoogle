.class public Lcom/android/settings/localepicker/AppLocalePickerActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "AppLocalePickerActivity.java"

# interfaces
.implements Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppLocaleDetailContainer:Landroid/view/View;

.field private mAppLocaleDetails:Lcom/android/settings/applications/appinfo/AppLocaleDetails;

.field private mContextAsUser:Landroid/content/Context;

.field private mLocalePickerWithRegion:Lcom/android/internal/app/LocalePickerWithRegion;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppLocaleDetailContainer(Lcom/android/settings/localepicker/AppLocalePickerActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetailContainer:Landroid/view/View;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/settings/localepicker/AppLocalePickerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    return-void
.end method

.method private launchAppLocaleDetailsPage()Landroid/view/View;
    .locals 3

    .line 130
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d034e

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetails:Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    .line 134
    invoke-virtual {v2, v1, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object v0
.end method

.method private launchLocalePickerPage()V
    .locals 3

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/android/settings/localepicker/AppLocalePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/localepicker/AppLocalePickerActivity$1;-><init>(Lcom/android/settings/localepicker/AppLocalePickerActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 156
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    .line 157
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mLocalePickerWithRegion:Lcom/android/internal/app/LocalePickerWithRegion;

    const v1, 0x7f0d018d

    .line 158
    invoke-virtual {v0, v1, p0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private setAppDefaultLocale(Ljava/lang/String;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mContextAsUser:Landroid/content/Context;

    const-class v1, Landroid/app/LocaleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LocaleManager;

    if-nez v0, :cond_0

    .line 123
    sget-object p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->TAG:Ljava/lang/String;

    const-string p1, "LocaleManager is null, cannot set default app locale"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/app/LocaleManager;->setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    .line 55
    sget-object p1, Lcom/android/settings/localepicker/AppLocalePickerActivity;->TAG:Ljava/lang/String;

    const-string v0, "There is no uri data."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    sget-object p1, Lcom/android/settings/localepicker/AppLocalePickerActivity;->TAG:Ljava/lang/String;

    const-string v0, "There is no package name."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "uid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 67
    sget-object v0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected user id"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 70
    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mContextAsUser:Landroid/content/Context;

    const p1, 0x7f040288

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mContextAsUser:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p0, v0, v1, p0}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;ZLjava/lang/String;Landroid/view/MenuItem$OnActionExpandListener;)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mLocalePickerWithRegion:Lcom/android/internal/app/LocalePickerWithRegion;

    .line 82
    iget-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppLocaleDetails;->newInstance(Ljava/lang/String;)Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetails:Lcom/android/settings/applications/appinfo/AppLocaleDetails;

    .line 83
    invoke-direct {p0}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->launchAppLocaleDetailsPage()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetailContainer:Landroid/view/View;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->launchLocalePickerPage()V

    return-void
.end method

.method public onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->setAppDefaultLocale(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/AppLocalePickerActivity;->setAppDefaultLocale(Ljava/lang/String;)V

    .line 104
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 91
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
