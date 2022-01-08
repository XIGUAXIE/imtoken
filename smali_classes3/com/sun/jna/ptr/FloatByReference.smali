.class public Lcom/sun/jna/ptr/FloatByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "FloatByReference.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/FloatByReference;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x4

    .line 34
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/sun/jna/ptr/FloatByReference;->setValue(F)V

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 3

    .line 43
    invoke-virtual {p0}, Lcom/sun/jna/ptr/FloatByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public setValue(F)V
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/sun/jna/ptr/FloatByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setFloat(JF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lcom/sun/jna/ptr/FloatByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/jna/Pointer;->nativeValue(Lcom/sun/jna/Pointer;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/sun/jna/ptr/FloatByReference;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "float@0x%x=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
