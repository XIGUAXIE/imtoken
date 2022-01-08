.class public Lorg/apache/commons/validator/Arg;
.super Ljava/lang/Object;
.source "Arg.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7bd3779794b67dbeL


# instance fields
.field protected bundle:Ljava/lang/String;

.field protected key:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected position:I

.field protected resource:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/apache/commons/validator/Arg;->bundle:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lorg/apache/commons/validator/Arg;->key:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lorg/apache/commons/validator/Arg;->name:Ljava/lang/String;

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lorg/apache/commons/validator/Arg;->position:I

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lorg/apache/commons/validator/Arg;->resource:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 81
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBundle()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/commons/validator/Arg;->bundle:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/validator/Arg;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/apache/commons/validator/Arg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 118
    iget v0, p0, Lorg/apache/commons/validator/Arg;->position:I

    return v0
.end method

.method public isResource()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lorg/apache/commons/validator/Arg;->resource:Z

    return v0
.end method

.method public setBundle(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/apache/commons/validator/Arg;->bundle:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lorg/apache/commons/validator/Arg;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/apache/commons/validator/Arg;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 159
    iput p1, p0, Lorg/apache/commons/validator/Arg;->position:I

    return-void
.end method

.method public setResource(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lorg/apache/commons/validator/Arg;->resource:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Arg: name="

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lorg/apache/commons/validator/Arg;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  key="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lorg/apache/commons/validator/Arg;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  position="

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget v1, p0, Lorg/apache/commons/validator/Arg;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  bundle="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Lorg/apache/commons/validator/Arg;->bundle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  resource="

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-boolean v1, p0, Lorg/apache/commons/validator/Arg;->resource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
