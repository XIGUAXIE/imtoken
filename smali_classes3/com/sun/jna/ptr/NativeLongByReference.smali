.class public Lcom/sun/jna/ptr/NativeLongByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "NativeLongByReference.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/sun/jna/NativeLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/NativeLong;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/NativeLongByReference;-><init>(Lcom/sun/jna/NativeLong;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/NativeLong;)V
    .locals 1

    .line 35
    sget v0, Lcom/sun/jna/NativeLong;->SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/sun/jna/ptr/NativeLongByReference;->setValue(Lcom/sun/jna/NativeLong;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/NativeLong;
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/sun/jna/ptr/NativeLongByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getNativeLong(J)Lcom/sun/jna/NativeLong;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/NativeLong;)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/sun/jna/ptr/NativeLongByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setNativeLong(JLcom/sun/jna/NativeLong;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 50
    sget v0, Lcom/sun/jna/NativeLong;->SIZE:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "NativeLong@0x1$%x=0x%2$x (%2$d)"

    const/4 v5, 0x4

    if-le v0, v5, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/sun/jna/ptr/NativeLongByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/jna/Pointer;->nativeValue(Lcom/sun/jna/Pointer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    .line 52
    invoke-virtual {p0}, Lcom/sun/jna/ptr/NativeLongByReference;->getValue()Lcom/sun/jna/NativeLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 54
    invoke-virtual {p0}, Lcom/sun/jna/ptr/NativeLongByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/jna/Pointer;->nativeValue(Lcom/sun/jna/Pointer;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    .line 55
    invoke-virtual {p0}, Lcom/sun/jna/ptr/NativeLongByReference;->getValue()Lcom/sun/jna/NativeLong;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/jna/NativeLong;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
