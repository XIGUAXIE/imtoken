.class interface abstract Lorg/consenlabs/tokencore/foundation/crypto/KDFParams;
.super Ljava/lang/Object;
.source "KDFParams.java"


# static fields
.field public static final DK_LEN:I = 0x20


# virtual methods
.method public abstract getDklen()I
.end method

.method public abstract getSalt()Ljava/lang/String;
.end method

.method public abstract validate()V
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end method
