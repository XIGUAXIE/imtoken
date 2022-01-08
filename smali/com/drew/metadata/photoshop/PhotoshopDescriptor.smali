.class public Lcom/drew/metadata/photoshop/PhotoshopDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PhotoshopDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/photoshop/PhotoshopDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/photoshop/PhotoshopDirectory;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private get32BitNumberString(I)Ljava/lang/String;
    .locals 4

    .line 301
    iget-object v0, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 304
    :cond_0
    new-instance v1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    :try_start_0
    const-string p1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 306
    invoke-virtual {v1, v3}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private getBinaryDataString(I)Ljava/lang/String;
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 327
    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%d bytes binary data"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getBooleanString(I)Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 293
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 295
    aget-byte p1, p1, v0

    if-nez p1, :cond_1

    const-string p1, "No"

    goto :goto_0

    :cond_1
    const-string p1, "Yes"

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSimpleString(I)Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public getClippingPathNameString(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 337
    :cond_0
    new-instance v1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 p1, 0x0

    .line 338
    invoke-virtual {v1, p1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result p1

    .line 339
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1}, Lcom/drew/lang/RandomAccessReader;->getBytes(II)[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_a

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_9

    const/16 v0, 0x404

    if-eq p1, v0, :cond_8

    const/16 v0, 0x406

    if-eq p1, v0, :cond_7

    const/16 v0, 0x414

    if-eq p1, v0, :cond_6

    const/16 v0, 0x41e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x421

    if-eq p1, v0, :cond_5

    const/16 v0, 0x426

    if-eq p1, v0, :cond_4

    const/16 v0, 0x428

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbb7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x419

    if-eq p1, v0, :cond_6

    const/16 v0, 0x41a

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_0

    const/16 v0, 0xbb6

    if-gt p1, v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getPathString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getBooleanString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getThumbnailDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getSlicesDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :cond_2
    invoke-virtual {p0, p1}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getClippingPathNameString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getPixelAspectRatioString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getPrintScaleDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_5
    invoke-virtual {p0}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :cond_6
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->get32BitNumberString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_7
    invoke-virtual {p0}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getJpegQualityString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_8
    invoke-direct {p0, p1}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getBinaryDataString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :cond_9
    invoke-virtual {p0}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getResolutionInfoDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_a
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->getSimpleString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x409
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getJpegQualityString()Ljava/lang/String;
    .locals 11

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    const/16 v1, 0x406

    invoke-virtual {v0, v1}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    invoke-virtual {v0, v1}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    new-instance v1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v1, v0}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 v0, 0x0

    .line 99
    invoke-virtual {v1, v0}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v2

    const/4 v3, 0x2

    .line 100
    invoke-virtual {v1, v3}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v4

    const/4 v5, 0x4

    .line 101
    invoke-virtual {v1, v5}, Lcom/drew/lang/RandomAccessReader;->getUInt16(I)I

    move-result v1

    const v6, 0xffff

    if-gt v2, v6, :cond_1

    const v6, 0xfffd

    if-lt v2, v6, :cond_1

    const v6, 0xfffc

    sub-int v6, v2, v6

    goto :goto_0

    :cond_1
    const/16 v6, 0x8

    if-gt v2, v6, :cond_2

    add-int/lit8 v6, v2, 0x4

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    const-string v2, "Unknown"

    goto :goto_1

    :pswitch_0
    const-string v2, "Maximum"

    goto :goto_1

    :pswitch_1
    const-string v2, "High"

    goto :goto_1

    :pswitch_2
    const-string v2, "Medium"

    goto :goto_1

    :pswitch_3
    const-string v2, "Low"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v7, "Unknown 0x%04X"

    const/4 v8, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    const/16 v9, 0x101

    if-eq v4, v9, :cond_3

    :try_start_1
    new-array v9, v8, [Ljava/lang/Object;

    .line 147
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v0

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    const-string v4, "Progressive"

    goto :goto_2

    :cond_4
    const-string v4, "Optimised"

    goto :goto_2

    :cond_5
    const-string v4, "Standard"

    :goto_2
    const/4 v9, 0x3

    if-lt v1, v8, :cond_6

    if-gt v1, v9, :cond_6

    const-string v7, "%d"

    new-array v10, v8, [Ljava/lang/Object;

    add-int/2addr v1, v3

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v0

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v0

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v7, "%d (%s), %s format, %s scans"

    new-array v5, v5, [Ljava/lang/Object;

    .line 154
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v2, v5, v8

    aput-object v4, v5, v3

    aput-object v1, v5, v9

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfffd
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getPathString(I)Ljava/lang/String;
    .locals 26

    const-string v0, ")"

    const-string v1, ","

    const-string v2, " ("

    const/4 v3, 0x0

    move-object/from16 v4, p0

    .line 349
    :try_start_0
    iget-object v5, v4, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v5, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object v5

    if-nez v5, :cond_0

    return-object v3

    .line 352
    :cond_0
    new-instance v6, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v6, v5}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    .line 353
    invoke-virtual {v6}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v9

    long-to-int v5, v9

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    invoke-virtual {v6, v5}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v5

    int-to-long v10, v5

    sub-long/2addr v7, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v7, v10

    long-to-int v5, v7

    div-int/lit8 v5, v5, 0x1a

    .line 358
    new-instance v7, Lcom/drew/metadata/photoshop/Subpath;

    invoke-direct {v7}, Lcom/drew/metadata/photoshop/Subpath;-><init>()V

    .line 359
    new-instance v8, Lcom/drew/metadata/photoshop/Subpath;

    invoke-direct {v8}, Lcom/drew/metadata/photoshop/Subpath;-><init>()V

    .line 361
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v13, v3

    const/4 v12, 0x0

    :goto_0
    const/4 v15, 0x3

    if-ge v12, v5, :cond_e

    mul-int/lit8 v14, v12, 0x1a

    .line 367
    :try_start_1
    invoke-virtual {v6, v14}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_c

    move/from16 v17, v12

    const-string v12, "Linked"

    const-string v11, "Unlinked"

    if-eq v3, v9, :cond_9

    const/4 v9, 0x2

    if-eq v3, v9, :cond_9

    if-eq v3, v15, :cond_7

    const/4 v9, 0x4

    if-eq v3, v9, :cond_4

    const/4 v9, 0x5

    if-eq v3, v9, :cond_3

    const/16 v9, 0x8

    if-eq v3, v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v14, 0x2

    .line 443
    :try_start_2
    invoke-virtual {v6, v14}, Lcom/drew/lang/RandomAccessReader;->getInt16(I)S

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    const-string/jumbo v13, "with all pixels"

    goto :goto_1

    :cond_2
    const-string/jumbo v13, "without all pixels"

    :goto_1
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v16, v5

    goto/16 :goto_7

    :cond_3
    const/4 v9, 0x4

    :cond_4
    if-ne v3, v9, :cond_5

    .line 424
    new-instance v3, Lcom/drew/metadata/photoshop/Knot;

    invoke-direct {v3, v12}, Lcom/drew/metadata/photoshop/Knot;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 426
    :cond_5
    new-instance v3, Lcom/drew/metadata/photoshop/Knot;

    invoke-direct {v3, v11}, Lcom/drew/metadata/photoshop/Knot;-><init>(Ljava/lang/String;)V

    :goto_2
    const/4 v9, 0x0

    :goto_3
    const/4 v11, 0x6

    if-ge v9, v11, :cond_6

    mul-int/lit8 v11, v9, 0x4

    add-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v14

    .line 429
    invoke-virtual {v6, v12}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result v12

    move/from16 v16, v5

    int-to-double v4, v12

    add-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v14

    invoke-virtual {v6, v11}, Lcom/drew/lang/RandomAccessReader;->getInt24(I)I

    move-result v11

    int-to-double v11, v11

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    div-double v11, v11, v24

    add-double/2addr v4, v11

    invoke-virtual {v3, v9, v4, v5}, Lcom/drew/metadata/photoshop/Knot;->setPoint(ID)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v16

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    goto :goto_3

    :cond_6
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 431
    invoke-virtual {v8, v3}, Lcom/drew/metadata/photoshop/Subpath;->add(Lcom/drew/metadata/photoshop/Knot;)V

    goto :goto_4

    :cond_7
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 412
    invoke-virtual {v8}, Lcom/drew/metadata/photoshop/Subpath;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 413
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_8
    new-instance v0, Lcom/drew/metadata/photoshop/Subpath;

    const-string v1, "Open Subpath"

    invoke-direct {v0, v1}, Lcom/drew/metadata/photoshop/Subpath;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    :goto_4
    move-object/from16 v6, v22

    move-object/from16 v7, v23

    goto/16 :goto_7

    :cond_9
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v16, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    const/4 v0, 0x1

    if-ne v3, v0, :cond_a

    .line 400
    new-instance v0, Lcom/drew/metadata/photoshop/Knot;

    invoke-direct {v0, v12}, Lcom/drew/metadata/photoshop/Knot;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 402
    :cond_a
    new-instance v0, Lcom/drew/metadata/photoshop/Knot;

    invoke-direct {v0, v11}, Lcom/drew/metadata/photoshop/Knot;-><init>(Ljava/lang/String;)V

    :goto_5
    const/4 v1, 0x0

    :goto_6
    const/4 v3, 0x6

    if-ge v1, v3, :cond_b

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v14

    move-object/from16 v6, v22

    .line 405
    invoke-virtual {v6, v5}, Lcom/drew/lang/RandomAccessReader;->getInt8(I)B

    move-result v5

    int-to-double v11, v5

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v14

    invoke-virtual {v6, v4}, Lcom/drew/lang/RandomAccessReader;->getInt24(I)I

    move-result v4

    int-to-double v4, v4

    move-wide/from16 v24, v4

    move v5, v14

    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    div-double v18, v24, v18

    add-double v11, v11, v18

    invoke-virtual {v0, v1, v11, v12}, Lcom/drew/metadata/photoshop/Knot;->setPoint(ID)V

    add-int/lit8 v1, v1, 0x1

    move v14, v5

    move-object/from16 v22, v6

    goto :goto_6

    :cond_b
    move-object/from16 v6, v22

    move-object/from16 v7, v23

    .line 407
    invoke-virtual {v7, v0}, Lcom/drew/metadata/photoshop/Subpath;->add(Lcom/drew/metadata/photoshop/Knot;)V

    goto :goto_7

    :cond_c
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move/from16 v16, v5

    move/from16 v17, v12

    .line 388
    invoke-virtual {v7}, Lcom/drew/metadata/photoshop/Subpath;->size()I

    move-result v0

    if-eqz v0, :cond_d

    .line 389
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_d
    new-instance v0, Lcom/drew/metadata/photoshop/Subpath;

    const-string v1, "Closed Subpath"

    invoke-direct {v0, v1}, Lcom/drew/metadata/photoshop/Subpath;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    :goto_7
    add-int/lit8 v12, v17, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v16

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    goto/16 :goto_0

    :cond_e
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    .line 452
    invoke-virtual {v7}, Lcom/drew/metadata/photoshop/Subpath;->size()I

    move-result v0

    if-eqz v0, :cond_f

    .line 453
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_f
    invoke-virtual {v8}, Lcom/drew/metadata/photoshop/Subpath;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 455
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_10
    invoke-virtual {v6}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    invoke-virtual {v6, v1}, Lcom/drew/lang/RandomAccessReader;->getByte(I)B

    move-result v1

    .line 459
    invoke-virtual {v6}, Lcom/drew/lang/RandomAccessReader;->getLength()J

    move-result-wide v3

    long-to-int v4, v3

    sub-int/2addr v4, v1

    sub-int/2addr v4, v0

    sget-object v0, Lcom/drew/lang/Charsets;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v4, v1, v0}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x22

    .line 464
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " having "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_11

    const-string v0, "initial fill rule \""

    .line 468
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    const-string v0, " subpath:"

    goto :goto_8

    :cond_12
    const-string v0, " subpaths:"

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/drew/metadata/photoshop/Subpath;

    const-string v4, "\n- "

    .line 473
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/drew/metadata/photoshop/Subpath;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    const-string v4, " knot:"

    goto :goto_9

    :cond_14
    const-string v4, " knots:"

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v3}, Lcom/drew/metadata/photoshop/Subpath;->getKnots()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/drew/metadata/photoshop/Knot;

    const-string v5, "\n  - "

    .line 476
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/drew/metadata/photoshop/Knot;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/drew/metadata/photoshop/Knot;->getPoint(I)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v6, v21

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/drew/metadata/photoshop/Knot;->getPoint(I)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v8, v20

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lcom/drew/metadata/photoshop/Knot;->getPoint(I)D

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Lcom/drew/metadata/photoshop/Knot;->getPoint(I)D

    move-result-wide v11

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Lcom/drew/metadata/photoshop/Knot;->getPoint(I)D

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x5

    invoke-virtual {v4, v12}, Lcom/drew/metadata/photoshop/Knot;->getPoint(I)D

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v6

    move-object/from16 v20, v8

    goto :goto_a

    .line 483
    :cond_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    goto :goto_b

    :catch_1
    move-object v0, v3

    :goto_b
    return-object v0
.end method

.method public getPixelAspectRatioString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    const/16 v2, 0x428

    invoke-virtual {v1, v2}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 167
    :cond_0
    new-instance v2, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v2, v1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 v1, 0x4

    .line 168
    invoke-virtual {v2, v1}, Lcom/drew/lang/RandomAccessReader;->getDouble64(I)D

    move-result-wide v1

    .line 169
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getPrintScaleDescription()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    const/16 v2, 0x426

    invoke-virtual {v1, v2}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 182
    :cond_0
    new-instance v2, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v2, v1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v2, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v3

    const/4 v4, 0x2

    .line 184
    invoke-virtual {v2, v4}, Lcom/drew/lang/RandomAccessReader;->getFloat32(I)F

    move-result v5

    const/4 v6, 0x6

    .line 185
    invoke-virtual {v2, v6}, Lcom/drew/lang/RandomAccessReader;->getFloat32(I)F

    move-result v6

    const/16 v7, 0xa

    .line 186
    invoke-virtual {v2, v7}, Lcom/drew/lang/RandomAccessReader;->getFloat32(I)F

    move-result v2

    if-eqz v3, :cond_3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_2

    const/4 v8, 0x3

    if-eq v3, v4, :cond_1

    const-string v9, "Unknown %04X, X:%s Y:%s, Scale:%s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v10, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v10, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v3, "User defined, X:%s Y:%s, Scale:%s"

    new-array v8, v8, [Ljava/lang/Object;

    .line 193
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "Size to fit"

    return-object v0

    .line 189
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Centered, Scale "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getResolutionInfoDescription()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 209
    :cond_0
    new-instance v2, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v2, v1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 v1, 0x0

    .line 210
    invoke-virtual {v2, v1}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v1

    const/16 v3, 0x8

    .line 211
    invoke-virtual {v2, v3}, Lcom/drew/lang/RandomAccessReader;->getS15Fixed16(I)F

    move-result v2

    .line 212
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v5, v1

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-double v1, v2

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DPI"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getSlicesDescription()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    const/16 v2, 0x41a

    invoke-virtual {v1, v2}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 253
    :cond_0
    new-instance v2, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v2, v1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/16 v1, 0x14

    .line 254
    invoke-virtual {v2, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v1

    const/4 v3, 0x2

    mul-int/lit8 v1, v1, 0x2

    const-string v4, "UTF-16"

    const/16 v5, 0x18

    .line 255
    invoke-virtual {v2, v5, v1, v4}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v1, v5

    .line 257
    invoke-virtual {v2, v1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v1

    const-string v5, "%s (%d,%d,%d,%d) %d Slices"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    const/4 v7, 0x4

    .line 258
    invoke-virtual {v2, v7}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x3

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getThumbnailDescription(I)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 272
    :cond_0
    new-instance v1, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 p1, 0x0

    .line 273
    invoke-virtual {v1, p1}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v2

    const/4 v3, 0x4

    .line 274
    invoke-virtual {v1, v3}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v4

    const/16 v5, 0x8

    .line 275
    invoke-virtual {v1, v5}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v5

    const/16 v6, 0x10

    .line 277
    invoke-virtual {v1, v6}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v6

    const/16 v7, 0x14

    .line 278
    invoke-virtual {v1, v7}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v7

    const/16 v8, 0x18

    .line 279
    invoke-virtual {v1, v8}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v1

    const-string v8, "%s, %dx%d, Decomp %d bytes, %d bpp, %d bytes"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x1

    if-ne v2, v10, :cond_1

    const-string v2, "JpegRGB"

    goto :goto_0

    :cond_1
    const-string v2, "RawRGB"

    :goto_0
    aput-object v2, v9, p1

    .line 281
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, v10

    const/4 p1, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, p1

    const/4 p1, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, v3

    const/4 p1, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, p1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getVersionDescription()Ljava/lang/String;
    .locals 10

    const-string v0, "UTF-16"

    const/4 v1, 0x0

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/drew/metadata/photoshop/PhotoshopDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/photoshop/PhotoshopDirectory;

    const/16 v3, 0x421

    invoke-virtual {v2, v3}, Lcom/drew/metadata/photoshop/PhotoshopDirectory;->getByteArray(I)[B

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 226
    :cond_0
    new-instance v3, Lcom/drew/lang/ByteArrayReader;

    invoke-direct {v3, v2}, Lcom/drew/lang/ByteArrayReader;-><init>([B)V

    const/4 v2, 0x0

    .line 228
    invoke-virtual {v3, v2}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v4

    const/4 v5, 0x5

    .line 231
    invoke-virtual {v3, v5}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    const/16 v7, 0x9

    .line 233
    invoke-virtual {v3, v7, v5, v0}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v7, v5

    .line 235
    invoke-virtual {v3, v7}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v5

    const/4 v9, 0x4

    add-int/2addr v7, v9

    mul-int/lit8 v5, v5, 0x2

    .line 237
    invoke-virtual {v3, v7, v5, v0}, Lcom/drew/lang/RandomAccessReader;->getString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v7, v5

    .line 239
    invoke-virtual {v3, v7}, Lcom/drew/lang/RandomAccessReader;->getInt32(I)I

    move-result v3

    const-string v5, "%d (%s, %s) %d"

    new-array v7, v9, [Ljava/lang/Object;

    .line 240
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    const/4 v2, 0x1

    aput-object v8, v7, v2

    aput-object v0, v7, v6

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method
