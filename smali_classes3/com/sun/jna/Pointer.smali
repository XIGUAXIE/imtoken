.class public Lcom/sun/jna/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Pointer$Opaque;
    }
.end annotation


# static fields
.field public static final NULL:Lcom/sun/jna/Pointer;


# instance fields
.field protected peer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide p1, p0, Lcom/sun/jna/Pointer;->peer:J

    return-void
.end method

.method public static final createConstant(I)Lcom/sun/jna/Pointer;
    .locals 5

    .line 63
    new-instance v0, Lcom/sun/jna/Pointer$Opaque;

    int-to-long v1, p0

    const-wide/16 v3, -0x1

    and-long/2addr v1, v3

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/sun/jna/Pointer$Opaque;-><init>(JLcom/sun/jna/Pointer$1;)V

    return-object v0
.end method

.method public static final createConstant(J)Lcom/sun/jna/Pointer;
    .locals 2

    .line 55
    new-instance v0, Lcom/sun/jna/Pointer$Opaque;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sun/jna/Pointer$Opaque;-><init>(JLcom/sun/jna/Pointer$1;)V

    return-object v0
.end method

.method public static nativeValue(Lcom/sun/jna/Pointer;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1190
    :cond_0
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    :goto_0
    return-wide v0
.end method

.method public static nativeValue(Lcom/sun/jna/Pointer;J)V
    .locals 0

    .line 1195
    iput-wide p1, p0, Lcom/sun/jna/Pointer;->peer:J

    return-void
.end method

.method private readArray(JLjava/lang/Object;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 460
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 463
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_0

    .line 464
    check-cast p3, [B

    move-object v3, p3

    check-cast v3, [B

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[BII)V

    goto/16 :goto_5

    .line 466
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_1

    .line 467
    check-cast p3, [S

    move-object v3, p3

    check-cast v3, [S

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[SII)V

    goto/16 :goto_5

    .line 469
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_2

    .line 470
    check-cast p3, [C

    move-object v3, p3

    check-cast v3, [C

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[CII)V

    goto/16 :goto_5

    .line 472
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_3

    .line 473
    check-cast p3, [I

    move-object v3, p3

    check-cast v3, [I

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[III)V

    goto/16 :goto_5

    .line 475
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_4

    .line 476
    check-cast p3, [J

    move-object v3, p3

    check-cast v3, [J

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[JII)V

    goto/16 :goto_5

    .line 478
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_5

    .line 479
    check-cast p3, [F

    move-object v3, p3

    check-cast v3, [F

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[FII)V

    goto/16 :goto_5

    .line 481
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_6

    .line 482
    check-cast p3, [D

    move-object v3, p3

    check-cast v3, [D

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[DII)V

    goto/16 :goto_5

    .line 484
    :cond_6
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 485
    check-cast p3, [Lcom/sun/jna/Pointer;

    move-object v3, p3

    check-cast v3, [Lcom/sun/jna/Pointer;

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[Lcom/sun/jna/Pointer;II)V

    goto/16 :goto_5

    .line 487
    :cond_7
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 488
    check-cast p3, [Lcom/sun/jna/Structure;

    check-cast p3, [Lcom/sun/jna/Structure;

    .line 489
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 490
    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Pointer;->getPointerArray(JI)[Lcom/sun/jna/Pointer;

    move-result-object p1

    .line 491
    :goto_0
    array-length p2, p3

    if-ge v1, p2, :cond_c

    .line 492
    aget-object p2, p3, v1

    aget-object v0, p1, v1

    invoke-static {p4, p2, v0}, Lcom/sun/jna/Structure;->updateStructureByReference(Ljava/lang/Class;Lcom/sun/jna/Structure;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p2

    aput-object p2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    :cond_8
    aget-object v0, p3, v1

    const/4 v2, 0x1

    if-nez v0, :cond_9

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->conditionalAutoRead()V

    .line 500
    aput-object v0, p3, v1

    goto :goto_1

    :cond_9
    long-to-int p4, p1

    .line 503
    invoke-virtual {v0, p0, p4, v2}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 504
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->read()V

    .line 506
    :goto_1
    array-length p4, p3

    invoke-virtual {v0, p4}, Lcom/sun/jna/Structure;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p4

    const/4 v0, 0x1

    .line 507
    :goto_2
    array-length v1, p3

    if-ge v0, v1, :cond_c

    .line 508
    aget-object v1, p3, v0

    if-nez v1, :cond_a

    .line 510
    aget-object v1, p4, v0

    aput-object v1, p3, v0

    goto :goto_3

    .line 513
    :cond_a
    aget-object v1, p3, v0

    aget-object v3, p3, v0

    invoke-virtual {v3}, Lcom/sun/jna/Structure;->size()I

    move-result v3

    mul-int v3, v3, v0

    int-to-long v3, v3

    add-long/2addr v3, p1

    long-to-int v4, v3

    invoke-virtual {v1, p0, v4, v2}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 514
    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->read()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 519
    :cond_b
    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 520
    move-object v0, p3

    check-cast v0, [Lcom/sun/jna/NativeMapped;

    check-cast v0, [Lcom/sun/jna/NativeMapped;

    .line 521
    invoke-static {p4}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v2

    .line 522
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p3

    array-length v3, v0

    div-int/2addr p3, v3

    .line 523
    :goto_4
    array-length v3, v0

    if-ge v1, v3, :cond_c

    mul-int v3, p3, v1

    int-to-long v3, v3

    add-long/2addr v3, p1

    .line 524
    invoke-virtual {v2}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sun/jna/Pointer;->getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 525
    new-instance v4, Lcom/sun/jna/FromNativeContext;

    invoke-direct {v4, p4}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v4}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/jna/NativeMapped;

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    return-void

    .line 529
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Reading array of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " from memory not supported"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeArray(JLjava/lang/Object;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 903
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_0

    .line 904
    check-cast p3, [B

    move-object v3, p3

    check-cast v3, [B

    const/4 v4, 0x0

    .line 905
    array-length v5, v3

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[BII)V

    goto/16 :goto_6

    .line 906
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_1

    .line 907
    check-cast p3, [S

    move-object v3, p3

    check-cast v3, [S

    const/4 v4, 0x0

    .line 908
    array-length v5, v3

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[SII)V

    goto/16 :goto_6

    .line 909
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_2

    .line 910
    check-cast p3, [C

    move-object v3, p3

    check-cast v3, [C

    const/4 v4, 0x0

    .line 911
    array-length v5, v3

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[CII)V

    goto/16 :goto_6

    .line 912
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_3

    .line 913
    check-cast p3, [I

    move-object v3, p3

    check-cast v3, [I

    const/4 v4, 0x0

    .line 914
    array-length v5, v3

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[III)V

    goto/16 :goto_6

    .line 915
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_4

    .line 916
    check-cast p3, [J

    move-object v3, p3

    check-cast v3, [J

    const/4 v4, 0x0

    .line 917
    array-length v5, v3

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[JII)V

    goto/16 :goto_6

    .line 918
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_5

    .line 919
    check-cast p3, [F

    move-object v3, p3

    check-cast v3, [F

    const/4 v4, 0x0

    .line 920
    array-length v5, v3

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[FII)V

    goto/16 :goto_6

    .line 921
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_6

    .line 922
    check-cast p3, [D

    move-object v3, p3

    check-cast v3, [D

    const/4 v4, 0x0

    .line 923
    array-length v5, v3

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[DII)V

    goto/16 :goto_6

    .line 924
    :cond_6
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 925
    check-cast p3, [Lcom/sun/jna/Pointer;

    move-object v3, p3

    check-cast v3, [Lcom/sun/jna/Pointer;

    const/4 v4, 0x0

    .line 926
    array-length v5, v3

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[Lcom/sun/jna/Pointer;II)V

    goto/16 :goto_6

    .line 927
    :cond_7
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 928
    check-cast p3, [Lcom/sun/jna/Structure;

    check-cast p3, [Lcom/sun/jna/Structure;

    .line 929
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 930
    array-length v7, p3

    new-array v5, v7, [Lcom/sun/jna/Pointer;

    .line 931
    :goto_0
    array-length p4, p3

    if-ge v1, p4, :cond_9

    .line 932
    aget-object p4, p3, v1

    if-nez p4, :cond_8

    const/4 p4, 0x0

    .line 933
    aput-object p4, v5, v1

    goto :goto_1

    .line 935
    :cond_8
    aget-object p4, p3, v1

    invoke-virtual {p4}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p4

    aput-object p4, v5, v1

    .line 936
    aget-object p4, p3, v1

    invoke-virtual {p4}, Lcom/sun/jna/Structure;->write()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    move-object v2, p0

    move-wide v3, p1

    .line 939
    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Pointer;->write(J[Lcom/sun/jna/Pointer;II)V

    goto/16 :goto_6

    .line 941
    :cond_a
    aget-object v0, p3, v1

    const/4 v2, 0x1

    if-nez v0, :cond_b

    .line 943
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    .line 944
    aput-object v0, p3, v1

    goto :goto_2

    :cond_b
    long-to-int p4, p1

    .line 946
    invoke-virtual {v0, p0, p4, v2}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 948
    :goto_2
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->write()V

    .line 949
    array-length p4, p3

    invoke-virtual {v0, p4}, Lcom/sun/jna/Structure;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p4

    const/4 v0, 0x1

    .line 950
    :goto_3
    array-length v1, p3

    if-ge v0, v1, :cond_e

    .line 951
    aget-object v1, p3, v0

    if-nez v1, :cond_c

    .line 952
    aget-object v1, p4, v0

    aput-object v1, p3, v0

    goto :goto_4

    .line 954
    :cond_c
    aget-object v1, p3, v0

    aget-object v3, p3, v0

    invoke-virtual {v3}, Lcom/sun/jna/Structure;->size()I

    move-result v3

    mul-int v3, v3, v0

    int-to-long v3, v3

    add-long/2addr v3, p1

    long-to-int v4, v3

    invoke-virtual {v1, p0, v4, v2}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 956
    :goto_4
    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/sun/jna/Structure;->write()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 959
    :cond_d
    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 960
    move-object v0, p3

    check-cast v0, [Lcom/sun/jna/NativeMapped;

    check-cast v0, [Lcom/sun/jna/NativeMapped;

    .line 961
    invoke-static {p4}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p4

    .line 962
    invoke-virtual {p4}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v2

    .line 963
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p3

    array-length v3, v0

    div-int/2addr p3, v3

    .line 964
    :goto_5
    array-length v3, v0

    if-ge v1, v3, :cond_e

    .line 965
    aget-object v3, v0, v1

    new-instance v4, Lcom/sun/jna/ToNativeContext;

    invoke-direct {v4}, Lcom/sun/jna/ToNativeContext;-><init>()V

    invoke-virtual {p4, v3, v4}, Lcom/sun/jna/NativeMappedConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object v3

    mul-int v4, v1, p3

    int-to-long v4, v4

    add-long/2addr v4, p1

    .line 966
    invoke-virtual {p0, v4, v5, v3, v2}, Lcom/sun/jna/Pointer;->setValue(JLjava/lang/Object;Ljava/lang/Class;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-void

    .line 969
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Writing array of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to memory not supported"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clear(J)V
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p1

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->setMemory(JJB)V

    return-void
.end method

.method public dump(JI)Ljava/lang/String;
    .locals 7

    .line 1163
    new-instance v0, Ljava/io/StringWriter;

    mul-int/lit8 v1, p3, 0x2

    const/16 v2, 0xd

    add-int/2addr v2, v1

    div-int/lit8 v1, p3, 0x4

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 1164
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "memory dump"

    .line 1165
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    const-string v3, "]"

    if-ge v2, p3, :cond_3

    int-to-long v4, v2

    add-long/2addr v4, p1

    .line 1169
    invoke-virtual {p0, v4, v5}, Lcom/sun/jna/Pointer;->getByte(J)B

    move-result v4

    .line 1170
    rem-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_0

    const-string v6, "["

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    if-ltz v4, :cond_1

    const/16 v6, 0x10

    if-ge v4, v6, :cond_1

    const-string v6, "0"

    .line 1172
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    and-int/lit16 v4, v4, 0xff

    .line 1173
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    add-int/lit8 v4, p3, -0x1

    if-ge v2, v4, :cond_2

    .line 1175
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1177
    :cond_3
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    const/16 p2, 0x5d

    if-eq p1, p2, :cond_4

    .line 1178
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    :cond_4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 110
    :cond_1
    instance-of v2, p1, Lcom/sun/jna/Pointer;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/sun/jna/Pointer;

    iget-wide v2, p1, Lcom/sun/jna/Pointer;->peer:J

    iget-wide v4, p0, Lcom/sun/jna/Pointer;->peer:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByte(J)B
    .locals 2

    .line 544
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getByte(Lcom/sun/jna/Pointer;JJ)B

    move-result p1

    return p1
.end method

.method public getByteArray(JI)[B
    .locals 7

    .line 688
    new-array v6, p3, [B

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    .line 689
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[BII)V

    return-object v6
.end method

.method public getByteBuffer(JJ)Ljava/nio/ByteBuffer;
    .locals 7

    .line 654
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->getDirectByteBuffer(Lcom/sun/jna/Pointer;JJJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getChar(J)C
    .locals 2

    .line 556
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getChar(Lcom/sun/jna/Pointer;JJ)C

    move-result p1

    return p1
.end method

.method public getCharArray(JI)[C
    .locals 7

    .line 697
    new-array v6, p3, [C

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    .line 698
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[CII)V

    return-object v6
.end method

.method public getDouble(J)D
    .locals 2

    .line 628
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getDouble(Lcom/sun/jna/Pointer;JJ)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDoubleArray(JI)[D
    .locals 7

    .line 742
    new-array v6, p3, [D

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    .line 743
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[DII)V

    return-object v6
.end method

.method public getFloat(J)F
    .locals 2

    .line 616
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getFloat(Lcom/sun/jna/Pointer;JJ)F

    move-result p1

    return p1
.end method

.method public getFloatArray(JI)[F
    .locals 7

    .line 733
    new-array v6, p3, [F

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    .line 734
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[FII)V

    return-object v6
.end method

.method public getInt(J)I
    .locals 2

    .line 580
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getInt(Lcom/sun/jna/Pointer;JJ)I

    move-result p1

    return p1
.end method

.method public getIntArray(JI)[I
    .locals 7

    .line 715
    new-array v6, p3, [I

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    .line 716
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[III)V

    return-object v6
.end method

.method public getLong(J)J
    .locals 2

    .line 592
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getLong(Lcom/sun/jna/Pointer;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongArray(JI)[J
    .locals 7

    .line 724
    new-array v6, p3, [J

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    .line 725
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[JII)V

    return-object v6
.end method

.method public getNativeLong(J)Lcom/sun/jna/NativeLong;
    .locals 3

    .line 604
    new-instance v0, Lcom/sun/jna/NativeLong;

    sget v1, Lcom/sun/jna/NativeLong;->SIZE:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getLong(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result p1

    int-to-long p1, p1

    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    return-object v0
.end method

.method public getPointer(J)Lcom/sun/jna/Pointer;
    .locals 2

    .line 642
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1
.end method

.method public getPointerArray(J)[Lcom/sun/jna/Pointer;
    .locals 6

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 753
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 755
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    add-int/2addr v3, v1

    int-to-long v4, v3

    add-long/2addr v4, p1

    .line 757
    invoke-virtual {p0, v4, v5}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Lcom/sun/jna/Pointer;

    .line 759
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/jna/Pointer;

    return-object p1
.end method

.method public getPointerArray(JI)[Lcom/sun/jna/Pointer;
    .locals 7

    .line 764
    new-array v6, p3, [Lcom/sun/jna/Pointer;

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    .line 765
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[Lcom/sun/jna/Pointer;II)V

    return-object v6
.end method

.method public getShort(J)S
    .locals 2

    .line 568
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getShort(Lcom/sun/jna/Pointer;JJ)S

    move-result p1

    return p1
.end method

.method public getShortArray(JI)[S
    .locals 7

    .line 706
    new-array v6, p3, [S

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v6

    move v5, p3

    .line 707
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->read(J[SII)V

    return-object v6
.end method

.method public getString(J)Ljava/lang/String;
    .locals 1

    .line 670
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 681
    invoke-static {p0, p1, p2, p3}, Lcom/sun/jna/Native;->getString(Lcom/sun/jna/Pointer;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(J)[Ljava/lang/String;
    .locals 2

    .line 777
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(JI)[Ljava/lang/String;
    .locals 1

    .line 795
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringArray(JILjava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "--WIDE-STRING--"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    if-eq p3, v5, :cond_3

    int-to-long v5, v2

    add-long/2addr v5, p1

    .line 818
    invoke-virtual {p0, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, v6, 0x1

    if-ge v6, p3, :cond_5

    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    .line 823
    :cond_0
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 824
    invoke-virtual {v5, v3, v4}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v3, v4, p4}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 825
    :goto_1
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v8, p3, :cond_2

    .line 827
    sget v5, Lcom/sun/jna/Native;->POINTER_SIZE:I

    add-int/2addr v7, v5

    int-to-long v5, v7

    add-long/2addr v5, p1

    .line 828
    invoke-virtual {p0, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v5

    :cond_2
    move v6, v8

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_2
    int-to-long v5, p3

    add-long/2addr v5, p1

    .line 832
    invoke-virtual {p0, v5, v6}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 833
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 834
    invoke-virtual {v5, v3, v4}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 835
    :cond_4
    invoke-virtual {v5, v3, v4, p4}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 836
    :goto_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    sget v5, Lcom/sun/jna/Native;->POINTER_SIZE:I

    add-int/2addr p3, v5

    goto :goto_2

    :cond_5
    new-array p1, v2, [Ljava/lang/String;

    .line 840
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getStringArray(JLjava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 785
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 364
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 365
    check-cast p4, Lcom/sun/jna/Structure;

    .line 366
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-static {p3, p4, p1}, Lcom/sun/jna/Structure;->updateStructureByReference(Ljava/lang/Class;Lcom/sun/jna/Structure;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p1

    :cond_0
    :goto_0
    move-object p4, p1

    goto/16 :goto_c

    :cond_1
    long-to-int p2, p1

    .line 369
    invoke-virtual {p4, p0, p2, v1}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 370
    invoke-virtual {p4}, Lcom/sun/jna/Structure;->read()V

    goto/16 :goto_c

    .line 373
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_21

    const-class v0, Ljava/lang/Boolean;

    if-ne p3, v0, :cond_3

    goto/16 :goto_a

    .line 375
    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_20

    const-class v0, Ljava/lang/Byte;

    if-ne p3, v0, :cond_4

    goto/16 :goto_9

    .line 377
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_1f

    const-class v0, Ljava/lang/Short;

    if-ne p3, v0, :cond_5

    goto/16 :goto_8

    .line 379
    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_1e

    const-class v0, Ljava/lang/Character;

    if-ne p3, v0, :cond_6

    goto/16 :goto_7

    .line 381
    :cond_6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_1d

    const-class v0, Ljava/lang/Integer;

    if-ne p3, v0, :cond_7

    goto/16 :goto_6

    .line 383
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_1c

    const-class v0, Ljava/lang/Long;

    if-ne p3, v0, :cond_8

    goto/16 :goto_5

    .line 385
    :cond_8
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_1b

    const-class v0, Ljava/lang/Float;

    if-ne p3, v0, :cond_9

    goto/16 :goto_4

    .line 387
    :cond_9
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_1a

    const-class v0, Ljava/lang/Double;

    if-ne p3, v0, :cond_a

    goto/16 :goto_3

    .line 389
    :cond_a
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 392
    instance-of p2, p4, Lcom/sun/jna/Pointer;

    if-eqz p2, :cond_b

    move-object v1, p4

    check-cast v1, Lcom/sun/jna/Pointer;

    :cond_b
    if-eqz v1, :cond_0

    .line 394
    iget-wide p2, p1, Lcom/sun/jna/Pointer;->peer:J

    iget-wide v2, v1, Lcom/sun/jna/Pointer;->peer:J

    cmp-long p4, p2, v2

    if-eqz p4, :cond_c

    goto :goto_0

    :cond_c
    :goto_1
    move-object p4, v1

    goto/16 :goto_c

    .line 400
    :cond_d
    const-class v0, Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-ne p3, v0, :cond_e

    .line 401
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 402
    invoke-virtual {p1, v2, v3}, Lcom/sun/jna/Pointer;->getString(J)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 403
    :cond_e
    const-class v0, Lcom/sun/jna/WString;

    if-ne p3, v0, :cond_f

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 405
    new-instance p2, Lcom/sun/jna/WString;

    invoke-virtual {p1, v2, v3}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    move-object p4, p2

    goto/16 :goto_c

    .line 406
    :cond_f
    const-class v0, Lcom/sun/jna/Callback;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_1

    .line 413
    :cond_10
    check-cast p4, Lcom/sun/jna/Callback;

    .line 414
    invoke-static {p4}, Lcom/sun/jna/CallbackReference;->getFunctionPointer(Lcom/sun/jna/Callback;)Lcom/sun/jna/Pointer;

    move-result-object p2

    .line 415
    invoke-virtual {p1, p2}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 416
    invoke-static {p3, p1}, Lcom/sun/jna/CallbackReference;->getCallback(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Callback;

    move-result-object p4

    goto/16 :goto_c

    .line 420
    :cond_11
    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    if-eqz v0, :cond_15

    const-class v0, Ljava/nio/Buffer;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 421
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_1

    :cond_12
    if-nez p4, :cond_13

    goto :goto_2

    .line 425
    :cond_13
    move-object p2, p4

    check-cast p2, Ljava/nio/Buffer;

    .line 426
    invoke-static {p2}, Lcom/sun/jna/Native;->getDirectBufferPointer(Ljava/nio/Buffer;)Lcom/sun/jna/Pointer;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_14

    .line 427
    invoke-virtual {v1, p1}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto/16 :goto_c

    .line 428
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t autogenerate a direct buffer on memory read"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_15
    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 433
    check-cast p4, Lcom/sun/jna/NativeMapped;

    if-eqz p4, :cond_16

    .line 435
    invoke-interface {p4}, Lcom/sun/jna/NativeMapped;->nativeType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 436
    new-instance p2, Lcom/sun/jna/FromNativeContext;

    invoke-direct {p2, p3}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    invoke-interface {p4, p1, p2}, Lcom/sun/jna/NativeMapped;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object p1

    .line 437
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_c

    .line 441
    :cond_16
    invoke-static {p3}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p4

    .line 442
    invoke-virtual {p4}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->getValue(JLjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 443
    new-instance p2, Lcom/sun/jna/FromNativeContext;

    invoke-direct {p2, p3}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p4, p1, p2}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    .line 445
    :cond_17
    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz p4, :cond_18

    .line 450
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sun/jna/Pointer;->readArray(JLjava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_c

    .line 448
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Need an initialized array"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 452
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Reading \""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "\" from memory is not supported"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 388
    :cond_1a
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getDouble(J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    goto :goto_c

    .line 386
    :cond_1b
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getFloat(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    goto :goto_c

    .line 384
    :cond_1c
    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getLong(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    goto :goto_c

    .line 382
    :cond_1d
    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_c

    .line 380
    :cond_1e
    :goto_7
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getChar(J)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p4

    goto :goto_c

    .line 378
    :cond_1f
    :goto_8
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getShort(J)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p4

    goto :goto_c

    .line 376
    :cond_20
    :goto_9
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getByte(J)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    goto :goto_c

    .line 374
    :cond_21
    :goto_a
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_b

    :cond_22
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/sun/jna/Function;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    :cond_23
    :goto_c
    return-object p4
.end method

.method public getWideString(J)Ljava/lang/String;
    .locals 2

    .line 659
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getWideString(Lcom/sun/jna/Pointer;JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWideStringArray(J)[Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 799
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Pointer;->getWideStringArray(JI)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWideStringArray(JI)[Ljava/lang/String;
    .locals 1

    const-string v0, "--WIDE-STRING--"

    .line 803
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->getStringArray(JILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 6

    .line 115
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    const-wide/16 v4, -0x1

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public indexOf(JB)J
    .locals 6

    .line 127
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->indexOf(Lcom/sun/jna/Pointer;JJB)J

    move-result-wide p1

    return-wide p1
.end method

.method public read(J[BII)V
    .locals 8

    .line 140
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[BII)V

    return-void
.end method

.method public read(J[CII)V
    .locals 8

    .line 166
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[CII)V

    return-void
.end method

.method public read(J[DII)V
    .locals 8

    .line 218
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[DII)V

    return-void
.end method

.method public read(J[FII)V
    .locals 8

    .line 205
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[FII)V

    return-void
.end method

.method public read(J[III)V
    .locals 8

    .line 179
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[III)V

    return-void
.end method

.method public read(J[JII)V
    .locals 8

    .line 192
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[JII)V

    return-void
.end method

.method public read(J[Lcom/sun/jna/Pointer;II)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_2

    .line 232
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int v1, v1, v0

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    add-int v2, v0, p4

    .line 233
    aget-object v3, p3, v2

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 235
    iget-wide v4, v1, Lcom/sun/jna/Pointer;->peer:J

    iget-wide v6, v3, Lcom/sun/jna/Pointer;->peer:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 236
    :cond_0
    aput-object v1, p3, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public read(J[SII)V
    .locals 8

    .line 153
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->read(Lcom/sun/jna/Pointer;JJ[SII)V

    return-void
.end method

.method public setByte(JB)V
    .locals 6

    .line 993
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setByte(Lcom/sun/jna/Pointer;JJB)V

    return-void
.end method

.method public setChar(JC)V
    .locals 6

    .line 1019
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setChar(Lcom/sun/jna/Pointer;JJC)V

    return-void
.end method

.method public setDouble(JD)V
    .locals 7

    .line 1088
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->setDouble(Lcom/sun/jna/Pointer;JJD)V

    return-void
.end method

.method public setFloat(JF)V
    .locals 6

    .line 1075
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setFloat(Lcom/sun/jna/Pointer;JJF)V

    return-void
.end method

.method public setInt(JI)V
    .locals 6

    .line 1032
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setInt(Lcom/sun/jna/Pointer;JJI)V

    return-void
.end method

.method public setLong(JJ)V
    .locals 7

    .line 1045
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->setLong(Lcom/sun/jna/Pointer;JJJ)V

    return-void
.end method

.method public setMemory(JJB)V
    .locals 8

    .line 980
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->setMemory(Lcom/sun/jna/Pointer;JJJB)V

    return-void
.end method

.method public setNativeLong(JLcom/sun/jna/NativeLong;)V
    .locals 2

    .line 1058
    sget v0, Lcom/sun/jna/NativeLong;->SIZE:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1059
    invoke-virtual {p3}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->setLong(JJ)V

    goto :goto_0

    .line 1061
    :cond_0
    invoke-virtual {p3}, Lcom/sun/jna/NativeLong;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setInt(JI)V

    :goto_0
    return-void
.end method

.method public setPointer(JLcom/sun/jna/Pointer;)V
    .locals 7

    .line 1103
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    if-eqz p3, :cond_0

    iget-wide v3, p3, Lcom/sun/jna/Pointer;->peer:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    move-wide v5, v3

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v6}, Lcom/sun/jna/Native;->setPointer(Lcom/sun/jna/Pointer;JJJ)V

    return-void
.end method

.method public setShort(JS)V
    .locals 6

    .line 1006
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setShort(Lcom/sun/jna/Pointer;JJS)V

    return-void
.end method

.method public setString(JLcom/sun/jna/WString;)V
    .locals 0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 1127
    :cond_0
    invoke-virtual {p3}, Lcom/sun/jna/WString;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setWideString(JLjava/lang/String;)V

    return-void
.end method

.method public setString(JLjava/lang/String;)V
    .locals 1

    .line 1140
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->setString(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setString(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1153
    invoke-static {p3, p4}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    .line 1154
    array-length v5, p3

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[BII)V

    .line 1155
    array-length p3, p3

    int-to-long p3, p3

    add-long/2addr p1, p3

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setByte(JB)V

    return-void
.end method

.method setValue(JLjava/lang/Object;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 850
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eq p4, v0, :cond_21

    const-class v0, Ljava/lang/Boolean;

    if-ne p4, v0, :cond_0

    goto/16 :goto_10

    .line 852
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p4, v0, :cond_1f

    const-class v0, Ljava/lang/Byte;

    if-ne p4, v0, :cond_1

    goto/16 :goto_e

    .line 854
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p4, v0, :cond_1d

    const-class v0, Ljava/lang/Short;

    if-ne p4, v0, :cond_2

    goto/16 :goto_c

    .line 856
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p4, v0, :cond_1b

    const-class v0, Ljava/lang/Character;

    if-ne p4, v0, :cond_3

    goto/16 :goto_a

    .line 858
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p4, v0, :cond_19

    const-class v0, Ljava/lang/Integer;

    if-ne p4, v0, :cond_4

    goto/16 :goto_8

    .line 860
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p4, v0, :cond_17

    const-class v0, Ljava/lang/Long;

    if-ne p4, v0, :cond_5

    goto/16 :goto_6

    .line 862
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p4, v0, :cond_15

    const-class v0, Ljava/lang/Float;

    if-ne p4, v0, :cond_6

    goto/16 :goto_4

    .line 864
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p4, v0, :cond_13

    const-class v0, Ljava/lang/Double;

    if-ne p4, v0, :cond_7

    goto/16 :goto_2

    .line 866
    :cond_7
    const-class v0, Lcom/sun/jna/Pointer;

    if-ne p4, v0, :cond_8

    .line 867
    check-cast p3, Lcom/sun/jna/Pointer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    goto/16 :goto_11

    .line 868
    :cond_8
    const-class v0, Ljava/lang/String;

    if-ne p4, v0, :cond_9

    .line 869
    check-cast p3, Lcom/sun/jna/Pointer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    goto/16 :goto_11

    .line 870
    :cond_9
    const-class v0, Lcom/sun/jna/WString;

    if-ne p4, v0, :cond_a

    .line 871
    check-cast p3, Lcom/sun/jna/Pointer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    goto/16 :goto_11

    .line 872
    :cond_a
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 873
    check-cast p3, Lcom/sun/jna/Structure;

    .line 874
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_c

    if-nez p3, :cond_b

    goto :goto_0

    .line 875
    :cond_b
    invoke-virtual {p3}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    if-eqz p3, :cond_23

    .line 877
    invoke-virtual {p3}, Lcom/sun/jna/Structure;->autoWrite()V

    goto/16 :goto_11

    :cond_c
    long-to-int p2, p1

    const/4 p1, 0x1

    .line 881
    invoke-virtual {p3, p0, p2, p1}, Lcom/sun/jna/Structure;->useMemory(Lcom/sun/jna/Pointer;IZ)V

    .line 882
    invoke-virtual {p3}, Lcom/sun/jna/Structure;->write()V

    goto/16 :goto_11

    .line 884
    :cond_d
    const-class v0, Lcom/sun/jna/Callback;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 885
    check-cast p3, Lcom/sun/jna/Callback;

    invoke-static {p3}, Lcom/sun/jna/CallbackReference;->getFunctionPointer(Lcom/sun/jna/Callback;)Lcom/sun/jna/Pointer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    goto/16 :goto_11

    .line 886
    :cond_e
    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    if-eqz v0, :cond_10

    const-class v0, Ljava/nio/Buffer;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p3, :cond_f

    goto :goto_1

    .line 887
    :cond_f
    check-cast p3, Ljava/nio/Buffer;

    .line 888
    invoke-static {p3}, Lcom/sun/jna/Native;->getDirectBufferPointer(Ljava/nio/Buffer;)Lcom/sun/jna/Pointer;

    move-result-object v1

    .line 889
    :goto_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    goto/16 :goto_11

    .line 890
    :cond_10
    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 891
    invoke-static {p4}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p4

    .line 892
    invoke-virtual {p4}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    .line 893
    new-instance v1, Lcom/sun/jna/ToNativeContext;

    invoke-direct {v1}, Lcom/sun/jna/ToNativeContext;-><init>()V

    invoke-virtual {p4, p3, v1}, Lcom/sun/jna/NativeMappedConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Pointer;->setValue(JLjava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_11

    .line 894
    :cond_11
    invoke-virtual {p4}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 895
    invoke-virtual {p4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/jna/Pointer;->writeArray(JLjava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_11

    .line 897
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Writing "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to memory is not supported"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_2
    if-nez p3, :cond_14

    const-wide/16 p3, 0x0

    goto :goto_3

    .line 865
    :cond_14
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/jna/Pointer;->setDouble(JD)V

    goto :goto_11

    :cond_15
    :goto_4
    if-nez p3, :cond_16

    const/4 p3, 0x0

    goto :goto_5

    .line 863
    :cond_16
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    :goto_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/Pointer;->setFloat(JF)V

    goto :goto_11

    :cond_17
    :goto_6
    if-nez p3, :cond_18

    const-wide/16 p3, 0x0

    goto :goto_7

    .line 861
    :cond_18
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :goto_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/jna/Pointer;->setLong(JJ)V

    goto :goto_11

    :cond_19
    :goto_8
    if-nez p3, :cond_1a

    goto :goto_9

    .line 859
    :cond_1a
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    goto :goto_11

    :cond_1b
    :goto_a
    if-nez p3, :cond_1c

    goto :goto_b

    .line 857
    :cond_1c
    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result v1

    :goto_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setChar(JC)V

    goto :goto_11

    :cond_1d
    :goto_c
    if-nez p3, :cond_1e

    goto :goto_d

    .line 855
    :cond_1e
    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result v1

    :goto_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setShort(JS)V

    goto :goto_11

    :cond_1f
    :goto_e
    if-nez p3, :cond_20

    goto :goto_f

    .line 853
    :cond_20
    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    :goto_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setByte(JB)V

    goto :goto_11

    .line 851
    :cond_21
    :goto_10
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_22

    const/4 v1, -0x1

    :cond_22
    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    :cond_23
    :goto_11
    return-void
.end method

.method public setWideString(JLjava/lang/String;)V
    .locals 6

    .line 1115
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/jna/Native;->setWideString(Lcom/sun/jna/Pointer;JJLjava/lang/String;)V

    return-void
.end method

.method public share(J)Lcom/sun/jna/Pointer;
    .locals 2

    const-wide/16 v0, 0x0

    .line 84
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sun/jna/Pointer;->share(JJ)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1
.end method

.method public share(JJ)Lcom/sun/jna/Pointer;
    .locals 2

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    return-object p0

    .line 94
    :cond_0
    new-instance p3, Lcom/sun/jna/Pointer;

    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    add-long/2addr v0, p1

    invoke-direct {p3, v0, v1}, Lcom/sun/jna/Pointer;-><init>(J)V

    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(J[BII)V
    .locals 8

    .line 257
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[BII)V

    return-void
.end method

.method public write(J[CII)V
    .locals 8

    .line 285
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[CII)V

    return-void
.end method

.method public write(J[DII)V
    .locals 8

    .line 341
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[DII)V

    return-void
.end method

.method public write(J[FII)V
    .locals 8

    .line 327
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[FII)V

    return-void
.end method

.method public write(J[III)V
    .locals 8

    .line 299
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[III)V

    return-void
.end method

.method public write(J[JII)V
    .locals 8

    .line 313
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[JII)V

    return-void
.end method

.method public write(J[Lcom/sun/jna/Pointer;II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    .line 353
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int v1, v1, v0

    int-to-long v1, v1

    add-long/2addr v1, p1

    add-int v3, p4, v0

    aget-object v3, p3, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(J[SII)V
    .locals 8

    .line 271
    iget-wide v1, p0, Lcom/sun/jna/Pointer;->peer:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/sun/jna/Native;->write(Lcom/sun/jna/Pointer;JJ[SII)V

    return-void
.end method
