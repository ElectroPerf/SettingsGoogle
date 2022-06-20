.class public Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;
.super Ljava/lang/Object;
.source "LocalBluetoothLeBroadcastMetadata.java"


# instance fields
.field private mAudioLocation:J

.field private mBroadcastCode:[B

.field private mBroadcastId:I

.field private mChannel:Landroid/bluetooth/BluetoothLeBroadcastChannel;

.field private mChannelIndex:I

.field private mCodecId:J

.field private mConfigMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

.field private mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

.field private mIsEncrypted:Z

.field private mIsSelected:Z

.field private mLanguage:Ljava/lang/String;

.field private mPaSyncInterval:I

.field private mPresentationDelayMicros:I

.field private mProgramInfo:Ljava/lang/String;

.field private mSourceAddressType:I

.field private mSourceAdvertisingSid:I

.field private mSourceDevice:Landroid/bluetooth/BluetoothDevice;

.field private mSubgroup:Landroid/bluetooth/BluetoothLeBroadcastSubgroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertToChannel(Ljava/lang/String;Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastChannel;
    .locals 4

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "to BluetoothLeBroadcastChannel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothLeBroadcastMetadata"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<(.*?)>"

    .line 350
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    .line 354
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 355
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mIsSelected:Z

    .line 356
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mChannelIndex:I

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converted channelString result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance p1, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    invoke-direct {p1}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;-><init>()V

    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mIsSelected:Z

    .line 363
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setSelected(Z)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    move-result-object p1

    iget p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mChannelIndex:I

    .line 364
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setChannelIndex(I)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    move-result-object p0

    .line 365
    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->setCodecMetadata(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;

    move-result-object p0

    .line 366
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastChannel;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "The match fail, can not convert it to BluetoothLeBroadcastChannel."

    .line 369
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private convertToConfigMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .locals 4

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "to BluetoothLeAudioCodecConfigMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothLeBroadcastMetadata"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<(.*?)>"

    .line 292
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 293
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 294
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    .line 296
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 297
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mAudioLocation:J

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converted configMetadataString result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance p1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;

    invoke-direct {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;-><init>()V

    iget-wide v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mAudioLocation:J

    .line 304
    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->setAudioLocation(J)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "The match fail, can not convert it to BluetoothLeAudioCodecConfigMetadata."

    .line 308
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private convertToContentMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .locals 4

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "to BluetoothLeAudioContentMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothLeBroadcastMetadata"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<(.*?)>"

    .line 320
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    .line 324
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 325
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mProgramInfo:Ljava/lang/String;

    .line 326
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mLanguage:Ljava/lang/String;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converted contentMetadataString result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance p1, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    invoke-direct {p1}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;-><init>()V

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mProgramInfo:Ljava/lang/String;

    .line 333
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setProgramInfo(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mLanguage:Ljava/lang/String;

    .line 334
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setLanguage(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "The match fail, can not convert it to BluetoothLeAudioContentMetadata."

    .line 338
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private convertToSubgroup(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    .locals 5

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "to BluetoothLeBroadcastSubgroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothLeBroadcastMetadata"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<(.*?)>"

    .line 257
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 258
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    .line 261
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 262
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mCodecId:J

    .line 263
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->convertToConfigMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mConfigMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v2, 0x2

    .line 264
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->convertToContentMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const/4 v2, 0x3

    .line 265
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mConfigMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    invoke-direct {p0, v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->convertToChannel(Ljava/lang/String;Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mChannel:Landroid/bluetooth/BluetoothLeBroadcastChannel;

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converted subgroupString result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance p1, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    invoke-direct {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;-><init>()V

    iget-wide v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mCodecId:J

    .line 272
    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->setCodecId(J)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mConfigMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 273
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->setCodecSpecificConfig(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 274
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mChannel:Landroid/bluetooth/BluetoothLeBroadcastChannel;

    .line 275
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->addChannel(Landroid/bluetooth/BluetoothLeBroadcastChannel;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;

    move-result-object p0

    .line 276
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "The match fail, can not convert it to BluetoothLeBroadcastSubgroup."

    .line 279
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public convertToBroadcastMetadata(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .locals 4

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "to BluetoothLeBroadcastMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalBluetoothLeBroadcastMetadata"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "<(.*?)>"

    .line 214
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    .line 218
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 219
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mSourceAddressType:I

    .line 220
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 221
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x2

    .line 222
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    const/4 v2, 0x3

    .line 223
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mBroadcastId:I

    const/4 v2, 0x4

    .line 224
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    const/4 v2, 0x5

    .line 225
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    const/4 v2, 0x6

    .line 226
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    const/4 v2, 0x7

    .line 227
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    const/16 v2, 0x8

    .line 228
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->convertToSubgroup(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mSubgroup:Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converted qrCodeString result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance p1, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    invoke-direct {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;-><init>()V

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mSourceDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mSourceAddressType:I

    .line 235
    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setSourceDevice(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mSourceAdvertisingSid:I

    .line 236
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setSourceAdvertisingSid(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mBroadcastId:I

    .line 237
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastId(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mPaSyncInterval:I

    .line 238
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setPaSyncInterval(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mIsEncrypted:Z

    .line 239
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setEncrypted(Z)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mBroadcastCode:[B

    .line 240
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mPresentationDelayMicros:I

    .line 241
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setPresentationDelayMicros(I)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastMetadata;->mSubgroup:Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    .line 242
    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->addSubgroup(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "The match fail, can not convert it to BluetoothLeBroadcastMetadata."

    .line 246
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
