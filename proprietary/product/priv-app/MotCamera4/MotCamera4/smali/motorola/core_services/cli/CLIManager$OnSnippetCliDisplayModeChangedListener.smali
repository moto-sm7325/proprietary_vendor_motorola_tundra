.class public interface abstract Lmotorola/core_services/cli/CLIManager$OnSnippetCliDisplayModeChangedListener;
.super Ljava/lang/Object;
.source "CLIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmotorola/core_services/cli/CLIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSnippetCliDisplayModeChangedListener"
.end annotation


# virtual methods
.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public onCliActivityDisplayModeChange(Landroid/content/ComponentName;I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
