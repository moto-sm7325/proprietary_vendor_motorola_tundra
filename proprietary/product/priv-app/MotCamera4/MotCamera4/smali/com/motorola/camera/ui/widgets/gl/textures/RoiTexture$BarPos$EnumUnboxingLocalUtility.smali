.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$BarPos$EnumUnboxingLocalUtility;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic getMX(I)F
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/high16 p0, -0x3db80000    # -50.0f

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/high16 p0, 0x42480000    # 50.0f

    return p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method
