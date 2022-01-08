.class public Lorg/apache/commons/validator/Var;
.super Ljava/lang/Object;
.source "Var.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final JSTYPE_INT:Ljava/lang/String; = "int"

.field public static final JSTYPE_REGEXP:Ljava/lang/String; = "regexp"

.field public static final JSTYPE_STRING:Ljava/lang/String; = "string"

.field private static final serialVersionUID:J = -0x97eb6d32eeb4880L


# instance fields
.field private bundle:Ljava/lang/String;

.field private jsType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private resource:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/apache/commons/validator/Var;->name:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lorg/apache/commons/validator/Var;->value:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lorg/apache/commons/validator/Var;->jsType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lorg/apache/commons/validator/Var;->resource:Z

    .line 73
    iput-object v0, p0, Lorg/apache/commons/validator/Var;->bundle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lorg/apache/commons/validator/Var;->name:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lorg/apache/commons/validator/Var;->value:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lorg/apache/commons/validator/Var;->jsType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lorg/apache/commons/validator/Var;->resource:Z

    .line 73
    iput-object v0, p0, Lorg/apache/commons/validator/Var;->bundle:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lorg/apache/commons/validator/Var;->name:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lorg/apache/commons/validator/Var;->value:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lorg/apache/commons/validator/Var;->jsType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 186
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBundle()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/validator/Var;->bundle:Ljava/lang/String;

    return-object v0
.end method

.method public getJsType()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/commons/validator/Var;->jsType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/commons/validator/Var;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/commons/validator/Var;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isResource()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/apache/commons/validator/Var;->resource:Z

    return v0
.end method

.method public setBundle(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/apache/commons/validator/Var;->bundle:Ljava/lang/String;

    return-void
.end method

.method public setJsType(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lorg/apache/commons/validator/Var;->jsType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/apache/commons/validator/Var;->name:Ljava/lang/String;

    return-void
.end method

.method public setResource(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lorg/apache/commons/validator/Var;->resource:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lorg/apache/commons/validator/Var;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Var: name="

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lorg/apache/commons/validator/Var;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  value="

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v1, p0, Lorg/apache/commons/validator/Var;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  resource="

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-boolean v1, p0, Lorg/apache/commons/validator/Var;->resource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 207
    iget-boolean v1, p0, Lorg/apache/commons/validator/Var;->resource:Z

    if-eqz v1, :cond_0

    const-string v1, "  bundle="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p0, Lorg/apache/commons/validator/Var;->bundle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "  jsType="

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lorg/apache/commons/validator/Var;->jsType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
