.class public Lorg/apache/commons/validator/Msg;
.super Ljava/lang/Object;
.source "Msg.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4ef6ff29d5283f94L


# instance fields
.field protected bundle:Ljava/lang/String;

.field protected key:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected resource:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/apache/commons/validator/Msg;->bundle:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lorg/apache/commons/validator/Msg;->key:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/apache/commons/validator/Msg;->name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lorg/apache/commons/validator/Msg;->resource:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 134
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBundle()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/commons/validator/Msg;->bundle:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/commons/validator/Msg;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/commons/validator/Msg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isResource()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/apache/commons/validator/Msg;->resource:Z

    return v0
.end method

.method public setBundle(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/apache/commons/validator/Msg;->bundle:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/apache/commons/validator/Msg;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/apache/commons/validator/Msg;->name:Ljava/lang/String;

    return-void
.end method

.method public setResource(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lorg/apache/commons/validator/Msg;->resource:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Msg: name="

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lorg/apache/commons/validator/Msg;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  key="

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v1, p0, Lorg/apache/commons/validator/Msg;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  resource="

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-boolean v1, p0, Lorg/apache/commons/validator/Msg;->resource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  bundle="

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lorg/apache/commons/validator/Msg;->bundle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
