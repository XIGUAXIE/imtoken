.class public interface abstract Lorg/apache/commons/digester/Rules;
.super Ljava/lang/Object;
.source "Rules.java"


# virtual methods
.method public abstract add(Ljava/lang/String;Lorg/apache/commons/digester/Rule;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getDigester()Lorg/apache/commons/digester/Digester;
.end method

.method public abstract getNamespaceURI()Ljava/lang/String;
.end method

.method public abstract match(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract rules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/digester/Rule;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setDigester(Lorg/apache/commons/digester/Digester;)V
.end method

.method public abstract setNamespaceURI(Ljava/lang/String;)V
.end method
