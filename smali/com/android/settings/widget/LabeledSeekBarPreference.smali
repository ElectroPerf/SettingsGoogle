.class public Lcom/android/settings/widget/LabeledSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "LabeledSeekBarPreference.java"


# instance fields
.field private final mIconEndContentDescriptionId:I

.field private final mIconEndId:I

.field private final mIconStartContentDescriptionId:I

.field private final mIconStartId:I

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mStopListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mSummary:Ljava/lang/CharSequence;

.field private final mTextEndId:I

.field private final mTextStartId:I

.field private final mTickMarkId:I


# direct methods
.method public static synthetic $r8$lambda$m-IxTiANx61b1OcvCzjGvoE6rBk(Lcom/android/settings/widget/LabeledSeekBarPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBarPreference;->lambda$updateIconStartIfNeeded$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vxg--adrmYKOwdxfWYcD0l9I1D0(Lcom/android/settings/widget/LabeledSeekBarPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBarPreference;->lambda$updateIconEndIfNeeded$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0503c3

    const v1, 0x11200d9

    .line 106
    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/widget/LabeledSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p3, 0x7f0601ab

    .line 72
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 74
    sget-object p3, Lcom/android/settings/R$styleable;->LabeledSeekBarPreference:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x5

    const/4 p3, 0x0

    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextStartId:I

    const/4 p2, 0x4

    .line 78
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextEndId:I

    const/4 p2, 0x6

    .line 80
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTickMarkId:I

    const/4 p2, 0x2

    .line 82
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartId:I

    .line 84
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    iput p4, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndId:I

    const/4 v0, 0x3

    .line 87
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartContentDescriptionId:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    const-string v0, "The resource of the iconStart attribute may be invalid or not set, you should set the iconStart attribute and have the valid resource."

    .line 90
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 94
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndContentDescriptionId:I

    if-eqz p2, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    move p3, v1

    :cond_3
    const-string p2, "The resource of the iconEnd attribute may be invalid or not set, you should set the iconEnd attribute and have the valid resource."

    .line 97
    invoke-static {p3, p2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 p2, 0x7

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private synthetic lambda$updateIconEndIfNeeded$1(Landroid/view/View;)V
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p1

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateIconStartIfNeeded$0(Landroid/view/View;)V
    .locals 0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private static setIconViewAndFrameEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 268
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 270
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method

.method private updateIconEndIfNeeded(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/SeekBar;)V
    .locals 2

    .line 242
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndId:I

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 247
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndId:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndContentDescriptionId:I

    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconEndContentDescriptionId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    :cond_2
    new-instance v0, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/widget/LabeledSeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    .line 263
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 264
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result p3

    if-ge p1, p3, :cond_3

    const/4 p0, 0x1

    :cond_3
    invoke-static {p2, p0}, Lcom/android/settings/widget/LabeledSeekBarPreference;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method private updateIconStartIfNeeded(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/SeekBar;)V
    .locals 2

    .line 216
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartId:I

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 221
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartId:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    :cond_1
    iget v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartContentDescriptionId:I

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mIconStartContentDescriptionId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    :cond_2
    new-instance v0, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LabeledSeekBarPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/widget/LabeledSeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    .line 237
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 238
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p0, 0x1

    :cond_3
    invoke-static {p2, p0}, Lcom/android/settings/widget/LabeledSeekBarPreference;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020014

    .line 115
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    iget v1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextStartId:I

    if-lez v1, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v0, 0x1020015

    .line 120
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    iget v1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextEndId:I

    if-lez v1, :cond_1

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v0, 0x7f0d0340

    .line 125
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 126
    iget v1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextStartId:I

    const/4 v2, 0x0

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTextEndId:I

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/16 v3, 0x8

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    .line 127
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x1020498

    .line 129
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 130
    iget v1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTickMarkId:I

    if-eqz v1, :cond_5

    .line 131
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mTickMarkId:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    const v1, 0x1020010

    .line 135
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    iget-object v4, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    .line 137
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 140
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const v1, 0x7f0d02e3

    .line 144
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d02e2

    .line 145
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 146
    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/widget/LabeledSeekBarPreference;->updateIconStartIfNeeded(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/SeekBar;)V

    const v1, 0x7f0d02d6

    .line 148
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d02d5

    .line 149
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 150
    invoke-direct {p0, v1, p1, v0}, Lcom/android/settings/widget/LabeledSeekBarPreference;->updateIconEndIfNeeded(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/SeekBar;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 170
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    .line 171
    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 161
    iget-object p0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p0, :cond_0

    .line 162
    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 177
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mStopListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 188
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOnPreferenceChangeStopListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mStopListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .line 200
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 201
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    .line 202
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    .line 195
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
