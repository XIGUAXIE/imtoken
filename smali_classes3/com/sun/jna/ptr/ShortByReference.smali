.class public Lcom/sun/jna/ptr/ShortByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "ShortByReference.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ShortByReference;-><init>(S)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    const/4 v0, 0x2

    .line 35
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/sun/jna/ptr/ShortByReference;->setValue(S)V

    return-void
.end method


# virtual methods
.method public getValue()S
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/sun/jna/ptr/ShortByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getShort(J)S

    move-result v0

    return v0
.end method

.method public setValue(S)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/sun/jna/ptr/ShortByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setShort(JS)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lcom/sun/jna/ptr/ShortByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/jna/Pointer;->nativeValue(Lcom/sun/jna/Pointer;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/sun/jna/ptr/ShortByReference;->getValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "short@0x%1$x=0x%2$x (%2$d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
