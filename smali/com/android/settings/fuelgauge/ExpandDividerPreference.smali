.class public Lcom/android/settings/fuelgauge/ExpandDividerPreference;
.super Landroidx/preference/Preference;
.source "ExpandDividerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;
    }
.end annotation


# static fields
.field static final PREFERENCE_KEY:Ljava/lang/String; = "expandable_divider"


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field private mIsExpanded:Z

.field private mOnExpandListener:Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;

.field mTextView:Landroid/widget/TextView;

.field private mTitleContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mIsExpanded:Z

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mTitleContent:Ljava/lang/String;

    const p1, 0x7f0601a6

    .line 54
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-string p1, "expandable_divider"

    .line 55
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method private refreshState()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 90
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mIsExpanded:Z

    if-eqz v1, :cond_0

    const v1, 0x7f020363

    goto :goto_0

    :cond_0
    const v1, 0x7f020364

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 95
    iget-object p0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mTitleContent:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0d0236

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f0d0234

    .line 62
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mImageView:Landroid/widget/ImageView;

    .line 63
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->refreshState()V

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mIsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->setIsExpanded(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mOnExpandListener:Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;

    if-eqz v0, :cond_0

    .line 70
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mIsExpanded:Z

    invoke-interface {v0, p0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;->onExpand(Z)V

    :cond_0
    return-void
.end method

.method setIsExpanded(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mIsExpanded:Z

    .line 81
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->refreshState()V

    return-void
.end method

.method setOnExpandListener(Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mOnExpandListener:Lcom/android/settings/fuelgauge/ExpandDividerPreference$OnExpandListener;

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->mTitleContent:Ljava/lang/String;

    .line 76
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/ExpandDividerPreference;->refreshState()V

    return-void
.end method
