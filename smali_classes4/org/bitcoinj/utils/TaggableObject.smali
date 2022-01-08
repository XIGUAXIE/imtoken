.class public interface abstract Lorg/bitcoinj/utils/TaggableObject;
.super Ljava/lang/Object;
.source "TaggableObject.java"


# virtual methods
.method public abstract getTag(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTags()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract maybeGetTag(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract setTag(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
.end method
