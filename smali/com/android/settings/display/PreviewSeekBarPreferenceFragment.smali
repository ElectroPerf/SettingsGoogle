.class public abstract Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreviewSeekBarPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
    }
.end annotation


# instance fields
.field protected mCurrentIndex:I

.field protected mEntries:[Ljava/lang/String;

.field protected mInitialIndex:I

.field private mLabel:Landroid/widget/TextView;

.field private mLarger:Landroid/view/View;

.field private mLastCommitTime:J

.field private mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

.field private mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPreviewPager:Landroidx/viewpager/widget/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

.field private mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

.field private mSmaller:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$0KRdtGHUBsyM7Ke5SSGB6m9jdtw(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$87xpQJovXUXwwU8SQGc_kyV0EDs(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLastCommitTime(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLastCommitTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewPager(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewPagerAdapter(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/PreviewPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastCommitTime(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLastCommitTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPagerIndicatorContentDescription(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPreviewLayer(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 252
    new-instance v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 270
    new-instance v0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$2;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_0

    .line 157
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 164
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_0
    return-void
.end method

.method private setPagerIndicatorContentDescription(I)V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getPreviewSampleResIds()[I

    move-result-object p1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const p1, 0x7f041031

    .line 248
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPreviewLayer(IZ)V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    iget v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    iget-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    .line 241
    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    .line 240
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/settings/display/PreviewPagerAdapter;->setPreviewLayer(IIIZ)V

    .line 243
    iput p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    return-void
.end method


# virtual methods
.method protected abstract commit()V
.end method

.method protected abstract createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
.end method

.method protected abstract getActivityLayoutResId()I
.end method

.method protected abstract getPreviewSampleResIds()[I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    if-eqz p3, :cond_0

    const-string v0, "mLastCommitTime"

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLastCommitTime:J

    .line 135
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    .line 136
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 137
    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getActivityLayoutResId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 140
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p3, 0x7f0d01a7

    .line 142
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    .line 147
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length p3, p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const v2, 0x7f0d0517

    .line 149
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/LabeledSeekBar;

    iput-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    .line 150
    iget-object v3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/LabeledSeekBar;->setLabels([Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v2, p3}, Landroid/widget/SeekBar;->setMax(I)V

    const p3, 0x7f0d0559

    .line 153
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    .line 154
    new-instance v2, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0d0346

    .line 161
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    .line 162
    new-instance v2, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length p3, p3

    if-ne p3, v0, :cond_1

    .line 172
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 175
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 176
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v1

    .line 178
    :goto_0
    iget-object v4, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Landroid/content/res/Configuration;

    move v5, v1

    .line 179
    :goto_1
    iget-object v6, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 180
    invoke-virtual {p0, v2, v5}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->getPreviewSampleResIds()[I

    move-result-object v2

    const v5, 0x7f0d0483

    .line 184
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager;

    iput-object v5, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    .line 185
    new-instance v5, Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-direct {v5, p3, v3, v2, v4}, Lcom/android/settings/display/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    iput-object v5, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    .line 187
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3, v5}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 188
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_4

    array-length v3, v2

    sub-int/2addr v3, v0

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    invoke-virtual {p3, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 189
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p3, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const p3, 0x7f0d0441

    .line 191
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/DotsPageIndicator;

    iput-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    .line 192
    array-length p3, v2

    if-le p3, v0, :cond_5

    .line 193
    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 194
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object p3, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/DotsPageIndicator;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    goto :goto_3

    :cond_5
    const/16 p3, 0x8

    .line 197
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_3
    iget p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    return-object p2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    iget-wide v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mLastCommitTime:J

    const-string p0, "mLastCommitTime"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 206
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 209
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    iget v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    new-instance v1, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener-IA;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 215
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 216
    iget-object p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mSeekBar:Lcom/android/settings/widget/LabeledSeekBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
