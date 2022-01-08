.class public Lcom/sun/jna/Function;
.super Lcom/sun/jna/Pointer;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Function$PointerArray;,
        Lcom/sun/jna/Function$NativeMappedArray;,
        Lcom/sun/jna/Function$PostCallRead;
    }
.end annotation


# static fields
.field public static final ALT_CONVENTION:I = 0x3f

.field public static final C_CONVENTION:I = 0x0

.field static final INTEGER_FALSE:Ljava/lang/Integer;

.field static final INTEGER_TRUE:Ljava/lang/Integer;

.field private static final IS_VARARGS:Lcom/sun/jna/VarArgsChecker;

.field private static final MASK_CC:I = 0x3f

.field public static final MAX_NARGS:I = 0x100

.field static final OPTION_INVOKING_METHOD:Ljava/lang/String; = "invoking-method"

.field public static final THROW_LAST_ERROR:I = 0x40

.field public static final USE_VARARGS:I = 0x180


# instance fields
.field final callFlags:I

.field final encoding:Ljava/lang/String;

.field private final functionName:Ljava/lang/String;

.field private library:Lcom/sun/jna/NativeLibrary;

.field final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Function;->INTEGER_TRUE:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Function;->INTEGER_FALSE:Ljava/lang/Integer;

    .line 216
    invoke-static {}, Lcom/sun/jna/VarArgsChecker;->create()Lcom/sun/jna/VarArgsChecker;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/Function;->IS_VARARGS:Lcom/sun/jna/VarArgsChecker;

    return-void
.end method

.method constructor <init>(Lcom/sun/jna/NativeLibrary;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 237
    invoke-direct {p0}, Lcom/sun/jna/Pointer;-><init>()V

    and-int/lit8 v0, p3, 0x3f

    .line 238
    invoke-direct {p0, v0}, Lcom/sun/jna/Function;->checkCallingConvention(I)V

    if-eqz p2, :cond_1

    .line 242
    iput-object p1, p0, Lcom/sun/jna/Function;->library:Lcom/sun/jna/NativeLibrary;

    .line 243
    iput-object p2, p0, Lcom/sun/jna/Function;->functionName:Ljava/lang/String;

    .line 244
    iput p3, p0, Lcom/sun/jna/Function;->callFlags:I

    .line 245
    iget-object p3, p1, Lcom/sun/jna/NativeLibrary;->options:Ljava/util/Map;

    iput-object p3, p0, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;

    .line 248
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/sun/jna/NativeLibrary;->getSymbolAddress(Ljava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/sun/jna/Function;->peer:J
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 250
    new-instance p3, Ljava/lang/UnsatisfiedLinkError;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error looking up function \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\': "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p3

    .line 240
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Function name must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lcom/sun/jna/Pointer;ILjava/lang/String;)V
    .locals 5

    .line 271
    invoke-direct {p0}, Lcom/sun/jna/Pointer;-><init>()V

    and-int/lit8 v0, p2, 0x3f

    .line 272
    invoke-direct {p0, v0}, Lcom/sun/jna/Function;->checkCallingConvention(I)V

    if-eqz p1, :cond_1

    .line 273
    iget-wide v0, p1, Lcom/sun/jna/Pointer;->peer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 277
    invoke-virtual {p1}, Lcom/sun/jna/Pointer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/Function;->functionName:Ljava/lang/String;

    .line 278
    iput p2, p0, Lcom/sun/jna/Function;->callFlags:I

    .line 279
    iget-wide p1, p1, Lcom/sun/jna/Pointer;->peer:J

    iput-wide p1, p0, Lcom/sun/jna/Function;->peer:J

    .line 280
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;

    return-void

    .line 275
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Function address may not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkCallingConvention(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x3f

    if-ne v0, p1, :cond_0

    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized calling convention: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static concatenateVarArgs([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    if-eqz p0, :cond_3

    .line 771
    array-length v0, p0

    if-lez v0, :cond_3

    .line 772
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 774
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 775
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 777
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 778
    aget-object v4, v0, v3

    instance-of v4, v4, Ljava/lang/Float;

    if-eqz v4, :cond_1

    .line 779
    aget-object v4, v0, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v0, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 782
    :cond_2
    array-length v3, p0

    array-length v4, v0

    add-int/2addr v3, v4

    new-array v4, v3, [Ljava/lang/Object;

    .line 783
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    invoke-static {p0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    array-length v5, v0

    invoke-static {v0, v2, v4, p0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x1

    .line 790
    aput-object v1, v4, v3

    move-object p0, v4

    :cond_3
    return-object p0
.end method

.method private convertArgument([Ljava/lang/Object;ILjava/lang/reflect/Method;Lcom/sun/jna/TypeMapper;ZLjava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/reflect/Method;",
            "Lcom/sun/jna/TypeMapper;",
            "Z",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 504
    aget-object v0, p1, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 506
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 508
    const-class v3, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    invoke-static {v2}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object p4

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 511
    invoke-interface {p4, v2}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    move-result-object p4

    goto :goto_0

    :cond_1
    move-object p4, v1

    :goto_0
    if-eqz p4, :cond_3

    if-eqz p3, :cond_2

    .line 516
    new-instance v2, Lcom/sun/jna/MethodParameterContext;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sun/jna/MethodParameterContext;-><init>(Lcom/sun/jna/Function;[Ljava/lang/Object;ILjava/lang/reflect/Method;)V

    goto :goto_1

    .line 519
    :cond_2
    new-instance v2, Lcom/sun/jna/FunctionParameterContext;

    invoke-direct {v2, p0, p1, p2}, Lcom/sun/jna/FunctionParameterContext;-><init>(Lcom/sun/jna/Function;[Ljava/lang/Object;I)V

    .line 521
    :goto_1
    invoke-interface {p4, v0, v2}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_1f

    .line 524
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/Function;->isPrimitiveArray(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_7

    .line 528
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 530
    instance-of p4, v0, Lcom/sun/jna/Structure;

    const/4 v2, 0x1

    if-eqz p4, :cond_9

    .line 531
    check-cast v0, Lcom/sun/jna/Structure;

    .line 532
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->autoWrite()V

    .line 533
    instance-of p1, v0, Lcom/sun/jna/Structure$ByValue;

    if-eqz p1, :cond_8

    .line 535
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p3, :cond_7

    .line 537
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    .line 538
    sget-object p5, Lcom/sun/jna/Function;->IS_VARARGS:Lcom/sun/jna/VarArgsChecker;

    invoke-virtual {p5, p3}, Lcom/sun/jna/VarArgsChecker;->isVarArgs(Ljava/lang/reflect/Method;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 539
    array-length p3, p4

    sub-int/2addr p3, v2

    if-ge p2, p3, :cond_5

    .line 540
    aget-object p1, p4, p2

    goto :goto_2

    .line 542
    :cond_5
    array-length p2, p4

    sub-int/2addr p2, v2

    aget-object p2, p4, p2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 543
    const-class p3, Ljava/lang/Object;

    if-eq p2, p3, :cond_7

    move-object p1, p2

    goto :goto_2

    .line 548
    :cond_6
    aget-object p1, p4, p2

    .line 551
    :cond_7
    :goto_2
    const-class p2, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-object v0

    .line 555
    :cond_8
    invoke-virtual {v0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1

    .line 556
    :cond_9
    instance-of p3, v0, Lcom/sun/jna/Callback;

    if-eqz p3, :cond_a

    .line 558
    check-cast v0, Lcom/sun/jna/Callback;

    invoke-static {v0}, Lcom/sun/jna/CallbackReference;->getFunctionPointer(Lcom/sun/jna/Callback;)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1

    .line 559
    :cond_a
    instance-of p3, v0, Ljava/lang/String;

    const/4 p4, 0x0

    if-eqz p3, :cond_b

    .line 564
    new-instance p1, Lcom/sun/jna/NativeString;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0, p4}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/sun/jna/NativeString;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1

    .line 565
    :cond_b
    instance-of p3, v0, Lcom/sun/jna/WString;

    if-eqz p3, :cond_c

    .line 567
    new-instance p1, Lcom/sun/jna/NativeString;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Lcom/sun/jna/NativeString;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/sun/jna/NativeString;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1

    .line 568
    :cond_c
    instance-of p3, v0, Ljava/lang/Boolean;

    if-eqz p3, :cond_e

    .line 571
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lcom/sun/jna/Function;->INTEGER_TRUE:Ljava/lang/Integer;

    goto :goto_3

    :cond_d
    sget-object p1, Lcom/sun/jna/Function;->INTEGER_FALSE:Ljava/lang/Integer;

    :goto_3
    return-object p1

    .line 572
    :cond_e
    const-class p3, [Ljava/lang/String;

    if-ne p3, p1, :cond_f

    .line 573
    new-instance p1, Lcom/sun/jna/StringArray;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iget-object p2, p0, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 574
    :cond_f
    const-class p3, [Lcom/sun/jna/WString;

    if-ne p3, p1, :cond_10

    .line 575
    new-instance p1, Lcom/sun/jna/StringArray;

    check-cast v0, [Lcom/sun/jna/WString;

    check-cast v0, [Lcom/sun/jna/WString;

    invoke-direct {p1, v0}, Lcom/sun/jna/StringArray;-><init>([Lcom/sun/jna/WString;)V

    return-object p1

    .line 576
    :cond_10
    const-class p3, [Lcom/sun/jna/Pointer;

    if-ne p3, p1, :cond_11

    .line 577
    new-instance p1, Lcom/sun/jna/Function$PointerArray;

    check-cast v0, [Lcom/sun/jna/Pointer;

    check-cast v0, [Lcom/sun/jna/Pointer;

    invoke-direct {p1, v0}, Lcom/sun/jna/Function$PointerArray;-><init>([Lcom/sun/jna/Pointer;)V

    return-object p1

    .line 578
    :cond_11
    const-class p3, [Lcom/sun/jna/NativeMapped;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 579
    new-instance p1, Lcom/sun/jna/Function$NativeMappedArray;

    check-cast v0, [Lcom/sun/jna/NativeMapped;

    check-cast v0, [Lcom/sun/jna/NativeMapped;

    invoke-direct {p1, v0}, Lcom/sun/jna/Function$NativeMappedArray;-><init>([Lcom/sun/jna/NativeMapped;)V

    return-object p1

    .line 580
    :cond_12
    const-class p3, [Lcom/sun/jna/Structure;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 583
    check-cast v0, [Lcom/sun/jna/Structure;

    check-cast v0, [Lcom/sun/jna/Structure;

    .line 584
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 585
    const-class p3, Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p6, :cond_15

    .line 587
    const-class p5, [Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {p5, p6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p5

    if-nez p5, :cond_15

    const-string p5, " declared Structure[] at parameter "

    const-string p6, "Function "

    if-nez p3, :cond_14

    const/4 v3, 0x0

    .line 594
    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_15

    .line 595
    aget-object v4, v0, v3

    instance-of v4, v4, Lcom/sun/jna/Structure$ByReference;

    if-nez v4, :cond_13

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 596
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/jna/Function;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but element "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is of Structure.ByReference type"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 589
    :cond_14
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/jna/Function;->getName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but array of "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was passed"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_15
    if-eqz p3, :cond_18

    .line 605
    invoke-static {v0}, Lcom/sun/jna/Structure;->autoWrite([Lcom/sun/jna/Structure;)V

    .line 606
    array-length p1, v0

    add-int/2addr p1, v2

    new-array p1, p1, [Lcom/sun/jna/Pointer;

    .line 607
    :goto_5
    array-length p2, v0

    if-ge p4, p2, :cond_17

    .line 608
    aget-object p2, v0, p4

    if-eqz p2, :cond_16

    aget-object p2, v0, p4

    invoke-virtual {p2}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    goto :goto_6

    :cond_16
    move-object p2, v1

    :goto_6
    aput-object p2, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    .line 610
    :cond_17
    new-instance p2, Lcom/sun/jna/Function$PointerArray;

    invoke-direct {p2, p1}, Lcom/sun/jna/Function$PointerArray;-><init>([Lcom/sun/jna/Pointer;)V

    return-object p2

    .line 611
    :cond_18
    array-length p2, v0

    if-eqz p2, :cond_1a

    .line 613
    aget-object p2, v0, p4

    if-nez p2, :cond_19

    .line 614
    invoke-static {p1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;)Lcom/sun/jna/Structure;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sun/jna/Structure;->toArray([Lcom/sun/jna/Structure;)[Lcom/sun/jna/Structure;

    .line 615
    aget-object p1, v0, p4

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1

    .line 617
    :cond_19
    invoke-static {v0}, Lcom/sun/jna/Structure;->autoWrite([Lcom/sun/jna/Structure;)V

    .line 618
    aget-object p1, v0, p4

    invoke-virtual {p1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1

    .line 612
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Structure array must have non-zero length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 620
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-nez p3, :cond_1e

    if-eqz p5, :cond_1c

    return-object v0

    .line 625
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/jna/Native;->isSupportedNativeType(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return-object v0

    .line 626
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported argument type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " at parameter "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " of function "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {p0}, Lcom/sun/jna/Function;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 621
    :cond_1e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported array argument type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1f
    :goto_7
    return-object v0
.end method

.method static fixedArgs(Ljava/lang/reflect/Method;)I
    .locals 1

    .line 804
    sget-object v0, Lcom/sun/jna/Function;->IS_VARARGS:Lcom/sun/jna/VarArgsChecker;

    invoke-virtual {v0, p0}, Lcom/sun/jna/VarArgsChecker;->fixedArgs(Ljava/lang/reflect/Method;)I

    move-result p0

    return p0
.end method

.method public static getFunction(Lcom/sun/jna/Pointer;)Lcom/sun/jna/Function;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-static {p0, v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;ILjava/lang/String;)Lcom/sun/jna/Function;

    move-result-object p0

    return-object p0
.end method

.method public static getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, p1, v0}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;ILjava/lang/String;)Lcom/sun/jna/Function;

    move-result-object p0

    return-object p0
.end method

.method public static getFunction(Lcom/sun/jna/Pointer;ILjava/lang/String;)Lcom/sun/jna/Function;
    .locals 1

    .line 201
    new-instance v0, Lcom/sun/jna/Function;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/Function;-><init>(Lcom/sun/jna/Pointer;ILjava/lang/String;)V

    return-object v0
.end method

.method public static getFunction(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/Function;
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/sun/jna/NativeLibrary;->getInstance(Ljava/lang/String;)Lcom/sun/jna/NativeLibrary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/jna/NativeLibrary;->getFunction(Ljava/lang/String;)Lcom/sun/jna/Function;

    move-result-object p0

    return-object p0
.end method

.method public static getFunction(Ljava/lang/String;Ljava/lang/String;I)Lcom/sun/jna/Function;
    .locals 1

    .line 123
    invoke-static {p0}, Lcom/sun/jna/NativeLibrary;->getInstance(Ljava/lang/String;)Lcom/sun/jna/NativeLibrary;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/NativeLibrary;->getFunction(Ljava/lang/String;ILjava/lang/String;)Lcom/sun/jna/Function;

    move-result-object p0

    return-object p0
.end method

.method public static getFunction(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/sun/jna/Function;
    .locals 0

    .line 147
    invoke-static {p0}, Lcom/sun/jna/NativeLibrary;->getInstance(Ljava/lang/String;)Lcom/sun/jna/NativeLibrary;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/jna/NativeLibrary;->getFunction(Ljava/lang/String;ILjava/lang/String;)Lcom/sun/jna/Function;

    move-result-object p0

    return-object p0
.end method

.method private invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;
    .locals 3

    .line 497
    iget-wide v0, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->invokePointer(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 498
    :cond_0
    new-instance v0, Lcom/sun/jna/Pointer;

    invoke-direct {v0, p1, p2}, Lcom/sun/jna/Pointer;-><init>(J)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private invokeString(I[Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    .line 660
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_0

    .line 664
    invoke-virtual {p1, v0, v1}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 667
    :cond_0
    iget-object p2, p0, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private isPrimitiveArray(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 635
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static isVarArgs(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 799
    sget-object v0, Lcom/sun/jna/Function;->IS_VARARGS:Lcom/sun/jna/VarArgsChecker;

    invoke-virtual {v0, p0}, Lcom/sun/jna/VarArgsChecker;->isVarArgs(Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0
.end method

.method static valueOf(Z)Ljava/lang/Boolean;
    .locals 0

    if-eqz p0, :cond_0

    .line 838
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 747
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 748
    check-cast p1, Lcom/sun/jna/Function;

    .line 749
    iget v2, p1, Lcom/sun/jna/Function;->callFlags:I

    iget v3, p0, Lcom/sun/jna/Function;->callFlags:I

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    iget-object v3, p0, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    .line 750
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p1, Lcom/sun/jna/Function;->peer:J

    iget-wide v4, p0, Lcom/sun/jna/Function;->peer:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public getCallingConvention()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/sun/jna/Function;->callFlags:I

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/sun/jna/Function;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 761
    iget v0, p0, Lcom/sun/jna/Function;->callFlags:I

    iget-object v1, p0, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-super {p0}, Lcom/sun/jna/Pointer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/sun/jna/Function;->options:Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "invoking-method"

    .line 313
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 315
    invoke-virtual/range {v1 .. v6}, Lcom/sun/jna/Function;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method invoke(Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v0, p5

    const/4 v12, 0x0

    new-array v1, v12, [Ljava/lang/Object;

    if-eqz v11, :cond_1

    .line 328
    array-length v1, v11

    const/16 v2, 0x100

    if-gt v1, v2, :cond_0

    .line 331
    array-length v1, v11

    new-array v2, v1, [Ljava/lang/Object;

    .line 332
    invoke-static {v11, v12, v2, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v2

    goto :goto_0

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Maximum argument count is 256"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v13, v1

    :goto_0
    const-string v1, "type-mapper"

    .line 335
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/sun/jna/TypeMapper;

    .line 336
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "allow-objects"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 337
    array-length v0, v13

    if-lez v0, :cond_2

    if-eqz v8, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/sun/jna/Function;->isVarArgs(Ljava/lang/reflect/Method;)Z

    move-result v0

    move/from16 v16, v0

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    .line 338
    :goto_1
    array-length v0, v13

    if-lez v0, :cond_3

    if-eqz v8, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/sun/jna/Function;->fixedArgs(Ljava/lang/reflect/Method;)I

    move-result v0

    move v6, v0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const/4 v5, 0x0

    .line 339
    :goto_3
    array-length v0, v13

    const/4 v1, 0x0

    if-ge v5, v0, :cond_6

    if-eqz v8, :cond_5

    if-eqz v16, :cond_4

    .line 340
    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    if-lt v5, v0, :cond_4

    array-length v0, v9

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v9, v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    :cond_4
    aget-object v0, v9, v5

    :goto_4
    move-object/from16 v17, v0

    goto :goto_5

    :cond_5
    move-object/from16 v17, v1

    :goto_5
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    move-object/from16 v3, p1

    move-object v4, v14

    move/from16 v18, v5

    move v5, v15

    move v12, v6

    move-object/from16 v6, v17

    .line 345
    invoke-direct/range {v0 .. v6}, Lcom/sun/jna/Function;->convertArgument([Ljava/lang/Object;ILjava/lang/reflect/Method;Lcom/sun/jna/TypeMapper;ZLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v13, v18

    add-int/lit8 v5, v18, 0x1

    move v6, v12

    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    move v12, v6

    .line 350
    const-class v0, Lcom/sun/jna/NativeMapped;

    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 351
    invoke-static/range {p3 .. p3}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v1

    .line 353
    invoke-virtual {v1}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6

    :cond_7
    if-eqz v14, :cond_8

    .line 355
    invoke-interface {v14, v10}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 357
    invoke-interface {v1}, Lcom/sun/jna/FromNativeConverter;->nativeType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6

    :cond_8
    move-object v0, v10

    .line 361
    :goto_6
    invoke-virtual {v7, v13, v0, v15, v12}, Lcom/sun/jna/Function;->invoke([Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object v0

    if-eqz v1, :cond_a

    if-eqz v8, :cond_9

    .line 366
    new-instance v2, Lcom/sun/jna/MethodResultContext;

    invoke-direct {v2, v10, v7, v11, v8}, Lcom/sun/jna/MethodResultContext;-><init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_7

    .line 368
    :cond_9
    new-instance v2, Lcom/sun/jna/FunctionResultContext;

    invoke-direct {v2, v10, v7, v11}, Lcom/sun/jna/FunctionResultContext;-><init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;)V

    .line 370
    :goto_7
    invoke-interface {v1, v0, v2}, Lcom/sun/jna/FromNativeConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object v0

    :cond_a
    if-eqz v11, :cond_f

    const/4 v1, 0x0

    .line 375
    :goto_8
    array-length v2, v11

    if-ge v1, v2, :cond_f

    .line 376
    aget-object v2, v11, v1

    if-nez v2, :cond_b

    goto :goto_a

    .line 379
    :cond_b
    instance-of v3, v2, Lcom/sun/jna/Structure;

    if-eqz v3, :cond_c

    .line 380
    instance-of v3, v2, Lcom/sun/jna/Structure$ByValue;

    if-nez v3, :cond_e

    .line 381
    check-cast v2, Lcom/sun/jna/Structure;

    invoke-virtual {v2}, Lcom/sun/jna/Structure;->autoRead()V

    goto :goto_a

    .line 383
    :cond_c
    aget-object v3, v13, v1

    instance-of v3, v3, Lcom/sun/jna/Function$PostCallRead;

    if-eqz v3, :cond_d

    .line 384
    aget-object v3, v13, v1

    check-cast v3, Lcom/sun/jna/Function$PostCallRead;

    invoke-interface {v3}, Lcom/sun/jna/Function$PostCallRead;->read()V

    .line 385
    aget-object v3, v13, v1

    instance-of v3, v3, Lcom/sun/jna/Function$PointerArray;

    if-eqz v3, :cond_e

    .line 386
    aget-object v3, v13, v1

    check-cast v3, Lcom/sun/jna/Function$PointerArray;

    .line 387
    const-class v4, [Lcom/sun/jna/Structure$ByReference;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 388
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 389
    check-cast v2, [Lcom/sun/jna/Structure;

    check-cast v2, [Lcom/sun/jna/Structure;

    const/4 v5, 0x0

    .line 390
    :goto_9
    array-length v6, v2

    if-ge v5, v6, :cond_e

    .line 391
    sget v6, Lcom/sun/jna/Native;->POINTER_SIZE:I

    mul-int v6, v6, v5

    int-to-long v8, v6

    invoke-virtual {v3, v8, v9}, Lcom/sun/jna/Function$PointerArray;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v6

    .line 392
    aget-object v8, v2, v5

    invoke-static {v4, v8, v6}, Lcom/sun/jna/Structure;->updateStructureByReference(Ljava/lang/Class;Lcom/sun/jna/Structure;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 396
    :cond_d
    const-class v3, [Lcom/sun/jna/Structure;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 397
    check-cast v2, [Lcom/sun/jna/Structure;

    check-cast v2, [Lcom/sun/jna/Structure;

    invoke-static {v2}, Lcom/sun/jna/Structure;->autoRead([Lcom/sun/jna/Structure;)V

    :cond_e
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    return-object v0
.end method

.method invoke([Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/jna/Function;->invoke([Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method invoke([Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;ZI)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 413
    iget v0, p0, Lcom/sun/jna/Function;->callFlags:I

    and-int/lit8 p4, p4, 0x3

    shl-int/lit8 p4, p4, 0x7

    or-int v4, v0, p4

    const/4 p4, 0x0

    if-eqz p2, :cond_1d

    .line 414
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1d

    const-class v0, Ljava/lang/Void;

    if-ne p2, v0, :cond_0

    goto/16 :goto_a

    .line 417
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_1b

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    goto/16 :goto_8

    .line 419
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1a

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_2

    goto/16 :goto_7

    .line 421
    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_19

    const-class v0, Ljava/lang/Short;

    if-ne p2, v0, :cond_3

    goto/16 :goto_6

    .line 423
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_18

    const-class v0, Ljava/lang/Character;

    if-ne p2, v0, :cond_4

    goto/16 :goto_5

    .line 425
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_17

    const-class v0, Ljava/lang/Integer;

    if-ne p2, v0, :cond_5

    goto/16 :goto_4

    .line 427
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_16

    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_6

    goto/16 :goto_3

    .line 429
    :cond_6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_15

    const-class v0, Ljava/lang/Float;

    if-ne p2, v0, :cond_7

    goto/16 :goto_2

    .line 431
    :cond_7
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_14

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_8

    goto/16 :goto_1

    .line 433
    :cond_8
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_9

    .line 434
    invoke-direct {p0, v4, p1, v2}, Lcom/sun/jna/Function;->invokeString(I[Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_b

    .line 435
    :cond_9
    const-class v0, Lcom/sun/jna/WString;

    if-ne p2, v0, :cond_a

    .line 436
    invoke-direct {p0, v4, p1, v1}, Lcom/sun/jna/Function;->invokeString(I[Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 438
    new-instance p4, Lcom/sun/jna/WString;

    invoke-direct {p4, p1}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 440
    :cond_a
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 441
    invoke-direct {p0, v4, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1

    .line 442
    :cond_b
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 443
    const-class p3, Lcom/sun/jna/Structure$ByValue;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 444
    iget-wide v2, p0, Lcom/sun/jna/Function;->peer:J

    .line 446
    invoke-static {p2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;)Lcom/sun/jna/Structure;

    move-result-object v6

    move-object v1, p0

    move-object v5, p1

    .line 445
    invoke-static/range {v1 .. v6}, Lcom/sun/jna/Native;->invokeStructure(Lcom/sun/jna/Function;JI[Ljava/lang/Object;Lcom/sun/jna/Structure;)Lcom/sun/jna/Structure;

    move-result-object p4

    .line 447
    invoke-virtual {p4}, Lcom/sun/jna/Structure;->autoRead()V

    goto/16 :goto_b

    .line 450
    :cond_c
    invoke-direct {p0, v4, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object p4

    if-eqz p4, :cond_1e

    .line 452
    check-cast p4, Lcom/sun/jna/Pointer;

    invoke-static {p2, p4}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p4

    .line 453
    invoke-virtual {p4}, Lcom/sun/jna/Structure;->conditionalAutoRead()V

    goto/16 :goto_b

    .line 457
    :cond_d
    const-class v0, Lcom/sun/jna/Callback;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 458
    invoke-direct {p0, v4, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object p4

    if-eqz p4, :cond_1e

    .line 460
    check-cast p4, Lcom/sun/jna/Pointer;

    invoke-static {p2, p4}, Lcom/sun/jna/CallbackReference;->getCallback(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Callback;

    move-result-object p4

    goto/16 :goto_b

    .line 462
    :cond_e
    const-class v0, [Ljava/lang/String;

    const-wide/16 v5, 0x0

    if-ne p2, v0, :cond_f

    .line 463
    invoke-direct {p0, v4, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 465
    iget-object p2, p0, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, p2}, Lcom/sun/jna/Pointer;->getStringArray(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_b

    .line 467
    :cond_f
    const-class v0, [Lcom/sun/jna/WString;

    if-ne p2, v0, :cond_10

    .line 468
    invoke-direct {p0, v4, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 470
    invoke-virtual {p1, v5, v6}, Lcom/sun/jna/Pointer;->getWideStringArray(J)[Ljava/lang/String;

    move-result-object p1

    .line 471
    array-length p2, p1

    new-array p4, p2, [Lcom/sun/jna/WString;

    .line 472
    :goto_0
    array-length p2, p1

    if-ge v2, p2, :cond_1e

    .line 473
    new-instance p2, Lcom/sun/jna/WString;

    aget-object p3, p1, v2

    invoke-direct {p2, p3}, Lcom/sun/jna/WString;-><init>(Ljava/lang/String;)V

    aput-object p2, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    :cond_10
    const-class v0, [Lcom/sun/jna/Pointer;

    if-ne p2, v0, :cond_11

    .line 478
    invoke-direct {p0, v4, p1}, Lcom/sun/jna/Function;->invokePointer(I[Ljava/lang/Object;)Lcom/sun/jna/Pointer;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 480
    invoke-virtual {p1, v5, v6}, Lcom/sun/jna/Pointer;->getPointerArray(J)[Lcom/sun/jna/Pointer;

    move-result-object p4

    goto/16 :goto_b

    :cond_11
    if-eqz p3, :cond_13

    .line 483
    iget-wide p3, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, p3, p4, v4, p1}, Lcom/sun/jna/Native;->invokeObject(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1e

    .line 485
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto/16 :goto_b

    .line 486
    :cond_12
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Return type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " does not match result "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 491
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported return type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " in function "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/jna/Function;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_14
    :goto_1
    iget-wide p2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, p2, p3, v4, p1}, Lcom/sun/jna/Native;->invokeDouble(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    goto :goto_b

    .line 430
    :cond_15
    :goto_2
    iget-wide p2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, p2, p3, v4, p1}, Lcom/sun/jna/Native;->invokeFloat(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    goto :goto_b

    .line 428
    :cond_16
    :goto_3
    iget-wide p2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, p2, p3, v4, p1}, Lcom/sun/jna/Native;->invokeLong(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    goto :goto_b

    .line 426
    :cond_17
    :goto_4
    iget-wide p2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, p2, p3, v4, p1}, Lcom/sun/jna/Native;->invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_b

    .line 424
    :cond_18
    :goto_5
    iget-wide p2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, p2, p3, v4, p1}, Lcom/sun/jna/Native;->invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p4

    goto :goto_b

    .line 422
    :cond_19
    :goto_6
    iget-wide p2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, p2, p3, v4, p1}, Lcom/sun/jna/Native;->invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p4

    goto :goto_b

    .line 420
    :cond_1a
    :goto_7
    iget-wide p2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, p2, p3, v4, p1}, Lcom/sun/jna/Native;->invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    goto :goto_b

    .line 418
    :cond_1b
    :goto_8
    iget-wide p2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, p2, p3, v4, p1}, Lcom/sun/jna/Native;->invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_9

    :cond_1c
    const/4 v1, 0x0

    :goto_9
    invoke-static {v1}, Lcom/sun/jna/Function;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    goto :goto_b

    .line 415
    :cond_1d
    :goto_a
    iget-wide p2, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {p0, p2, p3, v4, p1}, Lcom/sun/jna/Native;->invokeVoid(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)V

    :cond_1e
    :goto_b
    return-object p4
.end method

.method public invoke([Ljava/lang/Object;)V
    .locals 1

    .line 645
    const-class v0, Ljava/lang/Void;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public invokeDouble([Ljava/lang/Object;)D
    .locals 2

    .line 731
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public invokeFloat([Ljava/lang/Object;)F
    .locals 1

    .line 725
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public invokeInt([Ljava/lang/Object;)I
    .locals 1

    .line 713
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public invokeLong([Ljava/lang/Object;)J
    .locals 2

    .line 719
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public invokeObject([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 687
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invokePointer([Ljava/lang/Object;)Lcom/sun/jna/Pointer;
    .locals 1

    .line 694
    const-class v0, Lcom/sun/jna/Pointer;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/Pointer;

    return-object p1
.end method

.method public invokeString([Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 705
    const-class p2, Lcom/sun/jna/WString;

    goto :goto_0

    :cond_0
    const-class p2, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 706
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public invokeVoid([Ljava/lang/Object;)V
    .locals 1

    .line 737
    const-class v0, Ljava/lang/Void;

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/Function;->invoke(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/sun/jna/Function;->library:Lcom/sun/jna/NativeLibrary;

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native function "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/jna/Function;->functionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/jna/Function;->library:Lcom/sun/jna/NativeLibrary;

    invoke-virtual {v1}, Lcom/sun/jna/NativeLibrary;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sun/jna/Function;->peer:J

    .line 678
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 680
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native function@0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sun/jna/Function;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
