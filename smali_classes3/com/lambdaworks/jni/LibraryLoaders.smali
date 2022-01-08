.class public Lcom/lambdaworks/jni/LibraryLoaders;
.super Ljava/lang/Object;
.source "LibraryLoaders.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loader()Lcom/lambdaworks/jni/LibraryLoader;
    .locals 4

    const-string v0, "com.lambdaworks.jni.loader"

    .line 22
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "sys"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/lambdaworks/jni/SysLibraryLoader;

    invoke-direct {v0}, Lcom/lambdaworks/jni/SysLibraryLoader;-><init>()V

    return-object v0

    :cond_0
    const-string v1, "nil"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/lambdaworks/jni/NilLibraryLoader;

    invoke-direct {v0}, Lcom/lambdaworks/jni/NilLibraryLoader;-><init>()V

    return-object v0

    :cond_1
    const-string v1, "jar"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/lambdaworks/jni/JarLibraryLoader;

    invoke-direct {v0}, Lcom/lambdaworks/jni/JarLibraryLoader;-><init>()V

    return-object v0

    .line 28
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal value for com.lambdaworks.jni.loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "java.vm.specification.name"

    .line 31
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Java"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/lambdaworks/jni/JarLibraryLoader;

    invoke-direct {v0}, Lcom/lambdaworks/jni/JarLibraryLoader;-><init>()V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/lambdaworks/jni/SysLibraryLoader;

    invoke-direct {v0}, Lcom/lambdaworks/jni/SysLibraryLoader;-><init>()V

    :goto_0
    return-object v0
.end method
